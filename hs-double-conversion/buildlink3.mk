# $NetBSD$

BUILDLINK_TREE+=	hs-double-conversion

.if !defined(HS_DOUBLE_CONVERSION_BUILDLINK3_MK)
HS_DOUBLE_CONVERSION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-double-conversion+=	hs-double-conversion>=0.2
BUILDLINK_PKGSRCDIR.hs-double-conversion?=	../../wip/hs-double-conversion

.include "../../wip/hs-text/buildlink3.mk"
.endif	# HS_DOUBLE_CONVERSION_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-double-conversion
