package com.film.util;

import java.util.List;

/**
 * 分页对象，用于存储当前页分页相关的数据
 */
public class PageUtil<T> {
    private List<T> data; // 当前页数据
    private Integer firstPage; // 首页
    private Integer prePage; // 上一页
    private Integer nextPage;// 下一页
    private Integer totalPage;// 末页/总页数
    private Integer totalCount;// 总记录数
    private Integer currentPage;// 当前页
    private Integer pageSize;// 每页显示记录数

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    /**
     * 首页
     */
    public Integer getFirstPage() {
        return 1;
    }

    public void setFirstPage(Integer firstPage) {
        this.firstPage = firstPage;
    }

    /**
     * 上一页 算法：如果当前页是首页，则为1，否则为（当前页-1）
     */
    public Integer getPrePage() {
        return this.getCurrentPage()==this.getFirstPage()
                ?1:
                this.getCurrentPage()-1;
    }

    public void setPrePage(Integer prePage) {
        this.prePage = prePage;
    }

    /**
     * 下一页  算法： 如果当前页是末页，则为末页，否则为（当前页+1）
     */
    public Integer getNextPage() {
        return this.getCurrentPage()==this.getTotalPage()
                ? this.getTotalPage()
                : this.getCurrentPage()+1;
    }

    public void setNextPage(Integer nextPage) {
        this.nextPage = nextPage;
    }

    /**
     * 总页数  算法：  如果   总记录数%每页显示记录数能够整除 ,则为（总记录数/每页显示记录数），否则（总记录数/每页显示记录数+1）
     */
    public Integer getTotalPage() {
        return this.getTotalCount()%this.getPageSize()==0
                ? this.getTotalCount()/this.getPageSize()
                : this.getTotalCount()/this.getPageSize()+1;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}

