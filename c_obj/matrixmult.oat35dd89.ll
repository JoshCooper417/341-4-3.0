declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1922.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1922 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1922.str., i32 0, i32 0), align 4
@_oat_string1918.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string1918 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1918.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh389:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar1906, i32 %n1904){

__fresh384:
  %ar_slot1907 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar1906, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot1907
  %n_slot1905 = alloca i32
  store i32 %n1904, i32* %n_slot1905
  %i1908 = alloca i32
  store i32 0, i32* %i1908
  br label %__cond380

__cond380:
  %_lhs1909 = load i32* %i1908
  %_lhs1910 = load i32* %n_slot1905
  %bop1911 = icmp slt i32 %_lhs1909, %_lhs1910
  br i1 %bop1911, label %__body379, label %__post378

__fresh385:
  br label %__body379

__body379:
  %j1912 = alloca i32
  store i32 0, i32* %j1912
  br label %__cond383

__cond383:
  %_lhs1913 = load i32* %j1912
  %bop1914 = icmp slt i32 %_lhs1913, 4
  br i1 %bop1914, label %__body382, label %__post381

__fresh386:
  br label %__body382

__body382:
  %_lhs1917 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot1907
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1917 )
  %strval1919 = load i8** @_oat_string1918
  call void @print_string( i8* %strval1919 )
  %_lhs1920 = load i32* %j1912
  %bop1921 = add i32 %_lhs1920, 1
  store i32 %bop1921, i32* %j1912
  br label %__cond383

__fresh387:
  br label %__post381

__post381:
  %strval1923 = load i8** @_oat_string1922
  call void @print_string( i8* %strval1923 )
  %_lhs1924 = load i32* %i1908
  %bop1925 = add i32 %_lhs1924, 1
  store i32 %bop1925, i32* %i1908
  br label %__cond380

__fresh388:
  br label %__post378

__post378:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a11886, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a21884, i32 %row1882, i32 %col1880){

__fresh375:
  %a1_slot1887 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a11886, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1887
  %a2_slot1885 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a21884, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1885
  %row_slot1883 = alloca i32
  store i32 %row1882, i32* %row_slot1883
  %col_slot1881 = alloca i32
  store i32 %col1880, i32* %col_slot1881
  %sum1888 = alloca i32
  store i32 0, i32* %sum1888
  %k1889 = alloca i32
  store i32 0, i32* %k1889
  br label %__cond374

__cond374:
  %_lhs1890 = load i32* %k1889
  %bop1891 = icmp slt i32 %_lhs1890, 3
  br i1 %bop1891, label %__body373, label %__post372

__fresh376:
  br label %__body373

__body373:
  %_lhs1892 = load i32* %sum1888
  %_lhs1895 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1887
  %_lhs1898 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1885
  %bop1899 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1895, %_lhs1898
  %bop1900 = add i32 %_lhs1892, %bop1899
  store i32 %bop1900, i32* %sum1888
  %_lhs1901 = load i32* %k1889
  %bop1902 = add i32 %_lhs1901, 1
  store i32 %bop1902, i32* %k1889
  br label %__cond374

__fresh377:
  br label %__post372

__post372:
  %_lhs1903 = load i32* %sum1888
  ret i32 %_lhs1903
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a11861, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a21859, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a31857){

__fresh367:
  %a1_slot1862 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a11861, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1862
  %a2_slot1860 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a21859, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1860
  %a3_slot1858 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a31857, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1858
  %i1863 = alloca i32
  store i32 0, i32* %i1863
  br label %__cond363

__cond363:
  %_lhs1864 = load i32* %i1863
  %bop1865 = icmp slt i32 %_lhs1864, 2
  br i1 %bop1865, label %__body362, label %__post361

__fresh368:
  br label %__body362

__body362:
  %j1866 = alloca i32
  store i32 0, i32* %j1866
  br label %__cond366

__cond366:
  %_lhs1867 = load i32* %j1866
  %bop1868 = icmp slt i32 %_lhs1867, 4
  br i1 %bop1868, label %__body365, label %__post364

__fresh369:
  br label %__body365

__body365:
  %_lhs1874 = load i32* %j1866
  %_lhs1873 = load i32* %i1863
  %_lhs1872 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1860
  %_lhs1871 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1862
  %ret1875 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1871, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1872, i32 %_lhs1873, i32 %_lhs1874 )
  store i32 %ret1875, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1858
  %_lhs1876 = load i32* %j1866
  %bop1877 = add i32 %_lhs1876, 1
  store i32 %bop1877, i32* %j1866
  br label %__cond366

__fresh370:
  br label %__post364

__post364:
  %_lhs1878 = load i32* %i1863
  %bop1879 = add i32 %_lhs1878, 1
  store i32 %bop1879, i32* %i1863
  br label %__cond363

__fresh371:
  br label %__post361

__post361:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a11827, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a21825, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a31823){

__fresh354:
  %a1_slot1828 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a11827, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1828
  %a2_slot1826 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a21825, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1826
  %a3_slot1824 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a31823, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1824
  %i1829 = alloca i32
  store i32 0, i32* %i1829
  br label %__cond347

__cond347:
  %_lhs1830 = load i32* %i1829
  %bop1831 = icmp slt i32 %_lhs1830, 2
  br i1 %bop1831, label %__body346, label %__post345

__fresh355:
  br label %__body346

__body346:
  %j1832 = alloca i32
  store i32 0, i32* %j1832
  br label %__cond350

__cond350:
  %_lhs1833 = load i32* %j1832
  %bop1834 = icmp slt i32 %_lhs1833, 4
  br i1 %bop1834, label %__body349, label %__post348

__fresh356:
  br label %__body349

__body349:
  %k1835 = alloca i32
  store i32 0, i32* %k1835
  br label %__cond353

__cond353:
  %_lhs1836 = load i32* %k1835
  %bop1837 = icmp slt i32 %_lhs1836, 3
  br i1 %bop1837, label %__body352, label %__post351

__fresh357:
  br label %__body352

__body352:
  %_lhs1842 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1824
  %_lhs1845 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot1828
  %_lhs1848 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot1826
  %bop1849 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1845, %_lhs1848
  %bop1850 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1842, %bop1849
  store i32 %bop1850, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot1824
  %_lhs1851 = load i32* %k1835
  %bop1852 = add i32 %_lhs1851, 1
  store i32 %bop1852, i32* %k1835
  br label %__cond353

__fresh358:
  br label %__post351

__post351:
  %_lhs1853 = load i32* %j1832
  %bop1854 = add i32 %_lhs1853, 1
  store i32 %bop1854, i32* %j1832
  br label %__cond350

__fresh359:
  br label %__post348

__post348:
  %_lhs1855 = load i32* %i1829
  %bop1856 = add i32 %_lhs1855, 1
  store i32 %bop1856, i32* %i1829
  br label %__cond347

__fresh360:
  br label %__post345

__post345:
  ret void
}


define i32 @program (i32 %argc1757, { i32, [ 0 x i8* ] }* %argv1755){

__fresh344:
  %argc_slot1758 = alloca i32
  store i32 %argc1757, i32* %argc_slot1758
  %argv_slot1756 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1755, { i32, [ 0 x i8* ] }** %argv_slot1756
  %array_ptr1759 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1760 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1759 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1761 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1762 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1761 to { i32, [ 0 x i32 ] }* 
  %index_ptr1763 = getelementptr { i32, [ 0 x i32 ] }* %array1762, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1763
  %index_ptr1764 = getelementptr { i32, [ 0 x i32 ] }* %array1762, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1764
  %index_ptr1765 = getelementptr { i32, [ 0 x i32 ] }* %array1762, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr1765
  %index_ptr1766 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1760, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1762, { i32, [ 0 x i32 ] }** %index_ptr1766
  %array_ptr1767 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1768 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1767 to { i32, [ 0 x i32 ] }* 
  %index_ptr1769 = getelementptr { i32, [ 0 x i32 ] }* %array1768, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1769
  %index_ptr1770 = getelementptr { i32, [ 0 x i32 ] }* %array1768, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1770
  %index_ptr1771 = getelementptr { i32, [ 0 x i32 ] }* %array1768, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr1771
  %index_ptr1772 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1760, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1768, { i32, [ 0 x i32 ] }** %index_ptr1772
  %a1773 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1760, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1773
  %array_ptr1774 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array1775 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1774 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1776 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1777 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1776 to { i32, [ 0 x i32 ] }* 
  %index_ptr1778 = getelementptr { i32, [ 0 x i32 ] }* %array1777, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1778
  %index_ptr1779 = getelementptr { i32, [ 0 x i32 ] }* %array1777, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1779
  %index_ptr1780 = getelementptr { i32, [ 0 x i32 ] }* %array1777, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr1780
  %index_ptr1781 = getelementptr { i32, [ 0 x i32 ] }* %array1777, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr1781
  %index_ptr1782 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1775, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1777, { i32, [ 0 x i32 ] }** %index_ptr1782
  %array_ptr1783 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1784 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1783 to { i32, [ 0 x i32 ] }* 
  %index_ptr1785 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1785
  %index_ptr1786 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1786
  %index_ptr1787 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr1787
  %index_ptr1788 = getelementptr { i32, [ 0 x i32 ] }* %array1784, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr1788
  %index_ptr1789 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1775, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1784, { i32, [ 0 x i32 ] }** %index_ptr1789
  %array_ptr1790 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1791 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1790 to { i32, [ 0 x i32 ] }* 
  %index_ptr1792 = getelementptr { i32, [ 0 x i32 ] }* %array1791, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1792
  %index_ptr1793 = getelementptr { i32, [ 0 x i32 ] }* %array1791, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1793
  %index_ptr1794 = getelementptr { i32, [ 0 x i32 ] }* %array1791, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr1794
  %index_ptr1795 = getelementptr { i32, [ 0 x i32 ] }* %array1791, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr1795
  %index_ptr1796 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1775, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1791, { i32, [ 0 x i32 ] }** %index_ptr1796
  %b1797 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1775, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1797
  %array_ptr1798 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1799 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1798 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1800 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1801 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1800 to { i32, [ 0 x i32 ] }* 
  %index_ptr1802 = getelementptr { i32, [ 0 x i32 ] }* %array1801, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1802
  %index_ptr1803 = getelementptr { i32, [ 0 x i32 ] }* %array1801, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1803
  %index_ptr1804 = getelementptr { i32, [ 0 x i32 ] }* %array1801, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1804
  %index_ptr1805 = getelementptr { i32, [ 0 x i32 ] }* %array1801, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1805
  %index_ptr1806 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1799, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1801, { i32, [ 0 x i32 ] }** %index_ptr1806
  %array_ptr1807 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1808 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1807 to { i32, [ 0 x i32 ] }* 
  %index_ptr1809 = getelementptr { i32, [ 0 x i32 ] }* %array1808, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1809
  %index_ptr1810 = getelementptr { i32, [ 0 x i32 ] }* %array1808, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1810
  %index_ptr1811 = getelementptr { i32, [ 0 x i32 ] }* %array1808, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1811
  %index_ptr1812 = getelementptr { i32, [ 0 x i32 ] }* %array1808, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1812
  %index_ptr1813 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1799, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1808, { i32, [ 0 x i32 ] }** %index_ptr1813
  %c1814 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1799, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1814
  %_lhs1817 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1814
  %_lhs1816 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1797
  %_lhs1815 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1773
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1815, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1816, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1817 )
  %_lhs1818 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1814
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1818, i32 2 )
  %_lhs1821 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1814
  %_lhs1820 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b1797
  %_lhs1819 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1773
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1819, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1820, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1821 )
  %_lhs1822 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c1814
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1822, i32 2 )
  ret i32 0
}


