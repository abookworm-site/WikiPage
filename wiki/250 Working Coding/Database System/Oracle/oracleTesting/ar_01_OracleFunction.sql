--- Aar 02 Oracle ����---

--  �麯��, ���ۺϺ���
  --  ������ֵ������ֻ�᷵��һ��ֵ
  --  �麯����������ѡ���б����ѯ��having�Ӿ�
  --  ���к����� ����һ��ֵ�����һ��ֵ

-- ��ѯ����Ա����нˮ�ܺ�
select sum() from emp;

-- �鿴�����ж�������¼
select count() from emp;


-- �ַ�����
-- concat����ʾ�ַ���������  ��ͬ�� ||



-- ���ַ���������ĸ��д

-- ���ַ���ȫ��ת��Ϊ��д


-- ���ַ���ȫ��ת��ΪСд


-- ����ַ���



-- ȥ���ո�




-- ����ָ���ַ�����λ��



-- �鿴�ַ����ĳ���


-- ��ȡ�ַ����Ĳ���


-- �滻����


-- -��ֵ����-- -
-- ��ȡ���ݣ���С�������������������ָ��С�����ֵ�λ��



-- �ض�����, ����λ��ȥ���н�ȡ�����ǲ��������������Ĳ���



-- ȡģ����



-- ����ȡ��


-- ����ȡ��


--  ȡ����ֵ


--  ��ȡ����ֵ


--  x��y����


-- -���ں���-- -
-- - һ����ԣ���˾ҵ�������ڶ��嵽�롣



-- add_months,����ָ�����·�


-- �����������������·ݵ����һ��


-- ���������������·�


-- ������������ĵ�һ��







-- �������ܵ����ڼ�


-- ��ȡ�����е�ʱ��








-- �������ڵ�ʱ���



-- ��ָ����ʱ�䵥λ������ֵ














--  ת������
     --  ��oracle�д�����ֵ����ʽת������ʽת��
     --  ��ʽת��ָ�����ַ�������ת��Ϊ��ֵ��������
--  ��ʽת����
    --  to_char: ������ֵ��������ת���ַ�����ʱ�򣬱���Ҫ�涨��ʽ


-- date ��to_char



--  number : to_char




-- to_date:ת��֮���ǹ̶��ĸ�ʽ


-- to_number:ת������


-- - ��Ԫ����Ƕ��-- -
-- ��ʾû���ϼ������Ĺ�˾����


-- ��ʾԱ����Ӷ����6���º���һ�������������


-- -��������-- -
-- decode,case when

-- ����ͬ���ŵ���Ա��н��10������10%��20������20%��30������30%




-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- - �������£�
--  ��������














/*
����: ��������ʾת��Ϊ
����      �Ա�     ����
-- -- -- -- - -- -- -- --  -- -- 
����       ��        50
*/
--  ������ѯ





--  ���ȷ���
--  �ٹ��� null



/*
�麯��,һ������£��麯����Ҫ�� group by ���ʹ��
�麯��һ������ѡ���б�����having�����ж�

���õ��麯����5��
- avg()  ƽ��ֵ,ֻ������ֵ���͵�����
- min()  ��Сֵ���������κ�����
- max()  ���ֵ���������κ�����
- sum()   ��ͣ�ֻ�ʺ���ֵ���͵�����
- count() ��¼��, ������ʱ���������ֵ�������ǿ�ֵ
    count һ��������ȡ���еļ�¼������
    ��ȡ����ʱ, ����ʹ��*����ĳһ���������, ��������ʹ�ô����������棬
    ���Ǵ�����Ч�ʵĽǶȿ��ǣ�����ʹ�����ֻ���ĳһ���������, ����Ҫʹ��*

*/







--  ��Ҫʹ�� * 




--  group by: ����ĳЩ��ͬ��ֵȥ���з������
-- - group���з��������ʱ�򣬿���ָ��һ���л��߶���У�
-- - ����ʹ��groupby ֮��ѡ���б���ֻ�ܰ����麯����ֵ����group by ����ͨ�ֶ�
-- ��ÿ�����ŵ�ƽ��нˮ


-- ��ƽ���������2000�Ĳ���


-- �����¹�Ա�Ĺ���>2000 ����


-- ����нˮ���


-- �������� ������С���������ҳ���, �ҵ�Ա������
