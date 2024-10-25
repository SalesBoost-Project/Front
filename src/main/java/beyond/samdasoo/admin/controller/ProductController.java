package beyond.samdasoo.admin.controller;

import beyond.samdasoo.admin.dto.ProductRequestDto;
import beyond.samdasoo.admin.dto.ProductResponseDto;
import beyond.samdasoo.admin.service.ProductService;
import beyond.samdasoo.common.response.BaseResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Tag(name="Product APIs",description = "제품 관련 API")
@RestController
@RequestMapping("/api/admin/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    // 모든 상품 조회 API
    @GetMapping
    @Operation(summary = "모든 제품 조회", description = "관리자 계정에 등록되어있는 모든 제품을 조회")
    public BaseResponse<List<ProductResponseDto>> getAllProducts() {
        List<ProductResponseDto> products = productService.getAllProducts();
        return new BaseResponse<>(products);
    }

    // 상품 추가 API
    @PostMapping
    @Operation(summary = "제품 추가", description = "관리자 계정에 등록되어있는 모든 제품을 조회")
    public BaseResponse<String> addProduct(@RequestBody ProductRequestDto request) {
        productService.addProduct(request);
        return new BaseResponse<>("제품 등록을 완료했습니다.");
    }

    // 이름으로 상품 조회 API
    @GetMapping("/{name}")
    @Operation(summary = "제품 검색", description = "관리자 계정에 등록되어있는 제품을 이름으로 조회")
    public BaseResponse<ProductResponseDto> getProductByName(@PathVariable("name") String name) {
        ProductResponseDto product = productService.getProductByName(name);

        return new BaseResponse<>(product);
    }

    // 제품 번호로 상품 삭제 API
    @DeleteMapping("/{no}")
    @Operation(summary = "제품 삭제", description = "관리자 계정에 등록되어있는 제품 번호로 제품을 삭제")
    public BaseResponse<String> deleteProductByNo(@PathVariable("no") Long productNo){

        productService.deleteProductByNo(productNo);

        return new BaseResponse<>("제품 삭제를 완료했습니다.");
    }

    // 제품 번호로 상품 수정 API
    @PatchMapping("/{no}")
    @Operation(summary = "제품 수정", description = "관리자 계정에 등록되어있는 제품 번호로 제품을 수정")
    public BaseResponse<String> updateProductByNo(@PathVariable("no") Long productNo, @RequestBody ProductRequestDto request){

        productService.updateProductByNo(productNo, request);

        return new BaseResponse<>("제품 수정을 완료했습니다.");
    }

}
