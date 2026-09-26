-- شغّل الكود ده مرة واحدة في Supabase > SQL Editor بعد إنشاء bucket باسم product-images.
-- الهدف: السماح للمستخدم المسجل فقط برفع/تعديل/حذف صور المنتجات، والسماح للزوار بقراءة الصور.

create policy "Public can view product images"
on storage.objects
for select
to public
using (bucket_id = 'product-images');

create policy "Authenticated can upload product images"
on storage.objects
for insert
to authenticated
with check (bucket_id = 'product-images');

create policy "Authenticated can update product images"
on storage.objects
for update
to authenticated
using (bucket_id = 'product-images')
with check (bucket_id = 'product-images');

create policy "Authenticated can delete product images"
on storage.objects
for delete
to authenticated
using (bucket_id = 'product-images');
