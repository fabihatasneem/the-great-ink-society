package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventsPageController {

    @RequestMapping("/events")
    public String getEventsPage() {
        return "events";
    }
}
