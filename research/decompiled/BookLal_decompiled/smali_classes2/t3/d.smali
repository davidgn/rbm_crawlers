.class public final enum Lt3/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lt3/d;

.field public static final enum b:Lt3/d;

.field public static final enum c:Lt3/d;

.field public static final enum d:Lt3/d;

.field public static final enum e:Lt3/d;

.field public static final enum f:Lt3/d;

.field public static final enum l:Lt3/d;

.field public static final enum m:Lt3/d;

.field public static final enum n:Lt3/d;

.field public static final enum o:Lt3/d;

.field public static final enum p:Lt3/d;

.field public static final enum q:Lt3/d;

.field public static final synthetic r:[Lt3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lt3/d;

    const-string v1, "FIXED_LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt3/d;->a:Lt3/d;

    new-instance v1, Lt3/d;

    const-string v2, "MOBILE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt3/d;->b:Lt3/d;

    new-instance v2, Lt3/d;

    const-string v3, "FIXED_LINE_OR_MOBILE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lt3/d;->c:Lt3/d;

    new-instance v3, Lt3/d;

    const-string v4, "TOLL_FREE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lt3/d;->d:Lt3/d;

    new-instance v4, Lt3/d;

    const-string v5, "PREMIUM_RATE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lt3/d;->e:Lt3/d;

    new-instance v5, Lt3/d;

    const-string v6, "SHARED_COST"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lt3/d;->f:Lt3/d;

    new-instance v6, Lt3/d;

    const-string v7, "VOIP"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lt3/d;->l:Lt3/d;

    new-instance v7, Lt3/d;

    const-string v8, "PERSONAL_NUMBER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lt3/d;->m:Lt3/d;

    new-instance v8, Lt3/d;

    const-string v9, "PAGER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lt3/d;->n:Lt3/d;

    new-instance v9, Lt3/d;

    const-string v10, "UAN"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lt3/d;->o:Lt3/d;

    new-instance v10, Lt3/d;

    const-string v11, "VOICEMAIL"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lt3/d;->p:Lt3/d;

    new-instance v11, Lt3/d;

    const-string v12, "UNKNOWN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lt3/d;->q:Lt3/d;

    filled-new-array/range {v0 .. v11}, [Lt3/d;

    move-result-object v0

    sput-object v0, Lt3/d;->r:[Lt3/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt3/d;
    .locals 1

    const-class v0, Lt3/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt3/d;

    return-object p0
.end method

.method public static values()[Lt3/d;
    .locals 1

    sget-object v0, Lt3/d;->r:[Lt3/d;

    invoke-virtual {v0}, [Lt3/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt3/d;

    return-object v0
.end method
