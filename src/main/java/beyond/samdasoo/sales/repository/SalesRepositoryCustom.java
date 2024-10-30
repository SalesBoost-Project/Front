package beyond.samdasoo.sales.repository;

import beyond.samdasoo.common.dto.SearchCond;
import beyond.samdasoo.sales.dto.SalesResponseDto;
import beyond.samdasoo.sales.dto.SalesStatusDto;

public interface SalesRepositoryCustom {
    SalesStatusDto findSalesStatus(SearchCond searchCond);

    SalesResponseDto findSalesByLead(Long leadNo);
}
