package beyond.samdasoo.estimate.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class EstimateRequestDto {

    private String name;
    private LocalDate estDate;
    private String taxCls;
    private String surtaxYn;
    private int prodCnt;
    private int supplyPrice;
    private int tax;
    private int totalPrice;
    private String note;
    //private Long prodNo;
    private Long propNo;
}
