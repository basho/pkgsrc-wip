# $NetBSD$

BUILDLINK_TREE+=	hs-collections-api

.if !defined(HS_COLLECTIONS_API_BUILDLINK3_MK)
HS_COLLECTIONS_API_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-collections-api+=	hs-collections-api>=1.0.0
BUILDLINK_PKGSRCDIR.hs-collections-api?=	../../wip/hs-collections-api

.include "../../wip/hs-QuickCheck/buildlink3.mk"
.endif	# HS_COLLECTIONS_API_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-collections-api
