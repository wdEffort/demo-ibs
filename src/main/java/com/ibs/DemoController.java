package com.ibs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    private final static Logger LOGGER = LoggerFactory.getLogger(DemoController.class);

    @GetMapping(value = {"/", "/index.do"})
    public String getIndexPage() {
        LOGGER.info("===> Called DemoController class getIndex() Method");

        return "site/dashboard/index";
    }

    @GetMapping("/siteSetUp.do")
    public String getSiteSetUpPage() {
        LOGGER.info("===> Called DemoController class getSiteSetUpPage() Method");

        return "site/dashboard/sys/setup";
    }

    @GetMapping("/menuList.do")
    public String getMenuList() {
        LOGGER.info("===> Called DemoController class getMenuList() Method");

        return "site/dashboard/menu/menu_list";
    }

    @GetMapping("/itemList.do")
    public String getItemListPage() {
        LOGGER.info("===> Called DemoController class getItemListPage() Method");

        return "site/dashboard/item/item_list";
    }

    @GetMapping("/itemExcelUpload.do")
    public String getItemExcelUploadPage() {
        LOGGER.info("===> Called DemoController class getItemExcelUploadPage() Method");

        return "site/dashboard/item/item_excel_upload";
    }

    @GetMapping("/userList.do")
    public String getUserListPage() {
        LOGGER.info("===> Called DemoController class getUserListPage() Method");

        return "site/dashboard/user/user_list";
    }

    @GetMapping("/userInfo.do")
    public String getUserInfoPage() {
        LOGGER.info("===> Called DemoController class getUserInfoPage() Method");

        return "site/dashboard/user/user_info";
    }

    @GetMapping("/userLog.do")
    public String getUserLogPage() {
        LOGGER.info("===> Called DemoController class getUserLogPage() Method");

        return "site/dashboard/user/user_log";
    }

    @GetMapping("/userAuthList.do")
    public String getUserAuthListPage() {
        LOGGER.info("===> Called DemoController class getUserAuthListPage() Method");

        return "site/dashboard/user/user_auth_list";
    }

}
