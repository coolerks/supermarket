package com.coderman.controller.business;

import com.coderman.business.service.HealthService;
import com.coderman.common.annotation.ControllerEndpoint;
import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.Health;
import com.coderman.common.response.ActiveUser;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.business.HealthVO;
import com.coderman.common.vo.system.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
@Api(tags = "业务模块-汇报上报相关接口")
@RestController
@RequestMapping("/business/health")
public class SignController {

    @Autowired
    private HealthService healthService;

    /**
     * 每日汇报
     *
     * @param healthVO
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "汇报上报失败", operation = "每日汇报")
    @ApiOperation(value = "每日汇报", notes = "用户汇报上报")
    @RequiresPermissions({"health:report"})
    @PostMapping("/report")
    public ResponseBean report(@Validated @RequestBody HealthVO healthVO) throws BusinessException {
        ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        healthVO.setUserId(activeUser.getUser().getId());
        healthService.report(healthVO);
        return ResponseBean.success();
    }

    /**
     * 汇报记录
     *
     * @return
     */
    @ApiOperation(value = "汇报记录", notes = "用户汇报上报历史记录")
    @GetMapping("/history")
    public ResponseBean history(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                @RequestParam(value = "pageSize") Integer pageSize) {
        ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        Long id = activeUser.getUser().getId();
        PageVO<Health> Health = healthService.history(id, pageNum, pageSize);
        return ResponseBean.success(Health);
    }

    /**
     * 今日是否已汇报
     *
     * @return
     */
    @ApiOperation(value = "是否汇报", notes = "今日是否已汇报")
    @GetMapping("/isReport")
    public ResponseBean isReport() {
        ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        Health report = healthService.isReport(activeUser.getUser().getId());
        return ResponseBean.success(report);
    }

}
