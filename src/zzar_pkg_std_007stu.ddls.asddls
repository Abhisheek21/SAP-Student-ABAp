@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZAPKG_STD_007STU'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZAR_PKG_STD_007STU
  as select from ZPKG_STD_007
{
  key student_id as StudentID,
  first_name as FirstName,
  last_name as LastName,
  age as Age,
  dob as Dob,
  course_name as CourseName,
  course_duration as CourseDuration,
  student_gender as StudentGender,
  student_email as StudentEmail,
  student_phone_number as StudentPhoneNumber,
  student_address as StudentAddress,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
