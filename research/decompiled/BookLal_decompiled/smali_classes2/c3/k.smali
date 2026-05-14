.class public final enum Lc3/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lc3/k;

.field public static final synthetic c:[Lc3/k;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lc3/k;

    const-string v1, "1"

    const-string v2, "SIM_ONLY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lc3/k;

    const-string v2, "2"

    const-string v3, "NETWORK_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lc3/k;

    const-string v3, "3"

    const-string v4, "LOCALE_ONLY"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lc3/k;

    const-string v4, "12"

    const-string v5, "SIM_NETWORK"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lc3/k;

    const-string v5, "21"

    const-string v6, "NETWORK_SIM"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lc3/k;

    const-string v6, "13"

    const-string v7, "SIM_LOCALE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lc3/k;

    const-string v7, "31"

    const-string v8, "LOCALE_SIM"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lc3/k;

    const-string v8, "23"

    const-string v9, "NETWORK_LOCALE"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lc3/k;

    const-string v9, "32"

    const-string v10, "LOCALE_NETWORK"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lc3/k;

    const-string v10, "123"

    const-string v11, "SIM_NETWORK_LOCALE"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lc3/k;->b:Lc3/k;

    new-instance v10, Lc3/k;

    const-string v11, "132"

    const-string v12, "SIM_LOCALE_NETWORK"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lc3/k;

    const-string v12, "213"

    const-string v13, "NETWORK_SIM_LOCALE"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lc3/k;

    const-string v13, "231"

    const-string v14, "NETWORK_LOCALE_SIM"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lc3/k;

    const-string v14, "312"

    const-string v15, "LOCALE_SIM_NETWORK"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lc3/k;

    const-string v12, "321"

    const-string v15, "LOCALE_NETWORK_SIM"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lc3/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lc3/k;

    move-result-object v0

    sput-object v0, Lc3/k;->c:[Lc3/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lc3/k;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc3/k;
    .locals 1

    const-class v0, Lc3/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc3/k;

    return-object p0
.end method

.method public static values()[Lc3/k;
    .locals 1

    sget-object v0, Lc3/k;->c:[Lc3/k;

    invoke-virtual {v0}, [Lc3/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc3/k;

    return-object v0
.end method
