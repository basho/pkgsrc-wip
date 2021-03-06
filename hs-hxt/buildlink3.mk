# $NetBSD$

BUILDLINK_TREE+=	hs-hxt

.if !defined(HS_HXT_BUILDLINK3_MK)
HS_HXT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-hxt+=	hs-hxt>=9.2.2
BUILDLINK_PKGSRCDIR.hs-hxt?=	../../wip/hs-hxt

.include "../../wip/hs-hxt-charproperties/buildlink3.mk"
.include "../../wip/hs-hxt-regex-xmlschema/buildlink3.mk"
.include "../../wip/hs-hxt-unicode/buildlink3.mk"
.include "../../wip/hs-mtl/buildlink3.mk"
.include "../../wip/hs-network/buildlink3.mk"
.include "../../wip/hs-parsec/buildlink3.mk"
.endif	# HS_HXT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hxt
