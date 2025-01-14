package beyond.samdasoo.admin.repository;

import beyond.samdasoo.admin.entity.Process;
import beyond.samdasoo.admin.entity.SubProcess;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SubProcessRepository extends JpaRepository<SubProcess, Long>, SubProcessRepositoryCustom {
    boolean existsBySubProcessName(String subProcessName);

    List<SubProcess> findByProcess_ProcessName(String processName);

    List<SubProcess> findByProcess(Process process);
}
