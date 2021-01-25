package org.training.storefront.controllers.pages;

import de.hybris.platform.acceleratorstorefrontcommons.controllers.pages.AbstractPageController;
import de.hybris.platform.cms2.exceptions.CMSItemNotFoundException;
import de.hybris.platform.cms2.model.pages.ContentPageModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class TestingPageController extends AbstractPageController {

    private static final String TESTING_PAGE = "testing-page";

    @RequestMapping(value= TESTING_PAGE, method = RequestMethod.GET)
    public String getView(final Model model) throws CMSItemNotFoundException{
        final ContentPageModel contentPageModel = getContentPageForLabelOrId(TESTING_PAGE);
        storeCmsPageInModel(model, contentPageModel);



        return getViewForPage(model);
    }
}
