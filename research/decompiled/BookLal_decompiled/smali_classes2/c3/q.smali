.class public final enum Lc3/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lc3/q;

.field public static final synthetic b:[Lc3/q;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lc3/q;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc3/q;->a:Lc3/q;

    new-instance v1, Lc3/q;

    const-string v2, "FIXED_LINE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lc3/q;

    const-string v3, "FIXED_LINE_OR_MOBILE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lc3/q;

    const-string v4, "TOLL_FREE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lc3/q;

    const-string v5, "PREMIUM_RATE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lc3/q;

    const-string v6, "SHARED_COST"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lc3/q;

    const-string v7, "VOIP"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lc3/q;

    const-string v8, "PERSONAL_NUMBER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lc3/q;

    const-string v9, "PAGER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lc3/q;

    const-string v10, "UAN"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lc3/q;

    const-string v11, "VOICEMAIL"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lc3/q;

    const-string v12, "UNKNOWN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v11}, [Lc3/q;

    move-result-object v0

    sput-object v0, Lc3/q;->b:[Lc3/q;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc3/q;
    .locals 1

    const-class v0, Lc3/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc3/q;

    return-object p0
.end method

.method public static values()[Lc3/q;
    .locals 1

    sget-object v0, Lc3/q;->b:[Lc3/q;

    invoke-virtual {v0}, [Lc3/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc3/q;

    return-object v0
.end method
