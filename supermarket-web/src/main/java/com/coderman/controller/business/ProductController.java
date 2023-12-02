package com.coderman.controller.business;

import com.coderman.business.service.ProductService;
import com.coderman.common.annotation.ControllerEndpoint;
import com.coderman.common.error.BusinessCodeEnum;
import com.coderman.common.error.BusinessException;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.business.ProductStockVO;
import com.coderman.common.vo.business.ProductVO;
import com.coderman.common.vo.system.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
  * @Date 2023年12月 * @Version 1.0
 **/
@Api(tags = "业务模块-商品资料相关接口")
@RestController
@RequestMapping("/business/product")
public class ProductController {


    @Autowired
    private ProductService productService;

    /**
     * 全部商品列表
     * @return
     */
    @ApiOperation(value = "商品列表", notes = "商品列表,根据商品名模糊查询")
    @GetMapping("/findProductList")
    public ResponseBean findProductList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                        @RequestParam(value = "pageSize") Integer pageSize,
                                        @RequestParam(value = "categorys", required = false) String categorys,
                                        ProductVO productVO) {
        buildCategorySearch(categorys, productVO);
        PageVO<ProductVO> productVOPageVO = productService.findProductList(pageNum, pageSize, productVO);
        return ResponseBean.success(productVOPageVO);
    }

    /**
     * 可入库商品(入库页面使用)
     * @return
     */
    @ApiOperation(value = "可入库商品列表", notes = "商品列表,根据商品名模糊查询")
    @GetMapping("/findProducts")
    public ResponseBean findProducts(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                     @RequestParam(value = "pageSize") Integer pageSize,
                                     @RequestParam(value = "categorys", required = false) String categorys,
                                     ProductVO productVO){
        productVO.setStatus(0);
        buildCategorySearch(categorys, productVO);
        PageVO<ProductVO> productVOPageVO = productService.findProductList(pageNum, pageSize, productVO);
        return ResponseBean.success(productVOPageVO);
    }

    /**
     * 库存列表
     * @return
     */
    @ApiOperation(value = "库存列表", notes = "商品列表,根据商品名模糊查询")
    @GetMapping("/findProductStocks")
    public ResponseBean findProductStocks(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                        @RequestParam(value = "pageSize") Integer pageSize,
                                        @RequestParam(value = "categorys", required = false) String categorys,
                                        ProductVO productVO) {

        buildCategorySearch(categorys, productVO);
        PageVO<ProductStockVO> productVOPageVO = productService.findProductStocks(pageNum, pageSize, productVO);
        return ResponseBean.success(productVOPageVO);
    }



    /**
     * 所有库存(饼图使用)
     * @return
     */
    @ApiOperation(value = "全部库存", notes = "商品所有库存信息,饼图使用")
    @GetMapping("/findAllStocks")
    public ResponseBean findAllStocks(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                      @RequestParam(value = "pageSize") Integer pageSize,
                                      @RequestParam(value = "categorys", required = false) String categorys,
                                      ProductVO productVO) {
        buildCategorySearch(categorys, productVO);
        List<ProductStockVO> list = productService.findAllStocks(pageNum, pageSize,productVO);
        return ResponseBean.success(list);
    }



    /**
     * 封装商品查询条件
     * @param categorys
     * @param productVO
     */
    private void buildCategorySearch(@RequestParam(value = "categorys", required = false) String categorys, ProductVO productVO) {
        if (categorys != null && !"".equals(categorys)) {
            String[] split = categorys.split(",");
            switch (split.length) {
                case 1:
                    productVO.setOneCategoryId(Long.parseLong(split[0]));
                    break;
                case 2:
                    productVO.setOneCategoryId(Long.parseLong(split[0]));
                    productVO.setTwoCategoryId(Long.parseLong(split[1]));
                    break;
                case 3:
                    productVO.setOneCategoryId(Long.parseLong(split[0]));
                    productVO.setTwoCategoryId(Long.parseLong(split[1]));
                    productVO.setThreeCategoryId(Long.parseLong(split[2]));
                    break;
            }
        }
    }


    /**
     * 添加商品
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "添加商品失败", operation = "商品资料添加")
    @ApiOperation(value = "添加商品")
    @RequiresPermissions({"product:add"})
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated ProductVO productVO) throws BusinessException {
        if (productVO.getCategoryKeys().length != 3) {
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"商品需要3级分类");
        }
        productService.add(productVO);
        return ResponseBean.success();
    }

    /**
     * 编辑商品
     * @param id
     * @return
     */
    @ApiOperation(value = "编辑商品", notes = "编辑商品信息")
    @RequiresPermissions({"product:edit"})
    @GetMapping("/edit/{id}")
    public ResponseBean edit(@PathVariable Long id) {
        ProductVO productVO = productService.edit(id);
        return ResponseBean.success(productVO);
    }

    /**
     * 更新商品
     *
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "更新商品失败", operation = "商品资料更新")
    @ApiOperation(value = "更新商品", notes = "更新商品信息")
    @RequiresPermissions({"product:update"})
    @PutMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody ProductVO productVO) throws BusinessException {
        if (productVO.getCategoryKeys().length != 3) {
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"商品需要3级分类");
        }
        productService.update(id, productVO);
        return ResponseBean.success();
    }

    /**
     * 删除商品
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "删除商品失败", operation = "商品资料删除")
    @ApiOperation(value = "删除商品", notes = "删除商品信息")
    @RequiresPermissions({"product:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) throws BusinessException {
        productService.delete(id);
        return ResponseBean.success();
    }



    /**
     * 移入回收站
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "回收商品失败", operation = "商品资料回收")
    @ApiOperation(value = "移入回收站", notes = "移入回收站")
    @RequiresPermissions({"product:remove"})
    @PutMapping("/remove/{id}")
    public ResponseBean remove(@PathVariable Long id) throws BusinessException {
        productService.remove(id);
        return ResponseBean.success();
    }
    /**
     * 商品添加审核
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "商品添加审核失败", operation = "商品资料审核")
    @ApiOperation(value = "商品添加审核", notes = "商品添加审核")
    @RequiresPermissions({"product:publish"})
    @PutMapping("/publish/{id}")
    public ResponseBean publish(@PathVariable Long id) throws BusinessException {
        productService.publish(id);
        return ResponseBean.success();
    }
    /**
     * 恢复数据从回收站
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "恢复商品失败", operation = "商品资料恢复")
    @ApiOperation(value = "恢复商品", notes = "从回收站中恢复商品")
    @RequiresPermissions({"product:back"})
    @PutMapping("/back/{id}")
    public ResponseBean back(@PathVariable Long id) throws BusinessException {
        productService.back(id);
        return ResponseBean.success();
    }
}


