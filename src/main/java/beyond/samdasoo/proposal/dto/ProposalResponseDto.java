package beyond.samdasoo.proposal.dto;

import beyond.samdasoo.proposal.entity.Proposal;
import com.querydsl.core.annotations.QueryProjection;
import lombok.Data;

import java.time.LocalDate;

@Data
public class ProposalResponseDto {

    private Long propNo;
    private String name;
    private String cont;
    private LocalDate reqDate;
    private LocalDate startDate;
    private LocalDate endDate;
    private LocalDate submitDate;
    private LocalDate prDate;
    private String note;
    private Long leadNo;
    private String leadName;

    @QueryProjection
    public ProposalResponseDto(Proposal proposal) {
        this.propNo = proposal.getPropNo();
        this.name = proposal.getName();
        this.cont = proposal.getCont();
        this.reqDate = proposal.getReqDate();
        this.startDate = proposal.getStartDate();
        this.endDate = proposal.getEndDate();
        this.submitDate = proposal.getSubmitDate();
        this.prDate = proposal.getPrDate();
        this.note = proposal.getNote();
        this.leadNo = proposal.getLead().getNo();
        this.leadName = proposal.getLead().getName();
    }
}
