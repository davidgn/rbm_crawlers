.class public final enum LW2/G0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LW2/G0;

.field public static final enum b:LW2/G0;

.field public static final enum c:LW2/G0;

.field public static final enum d:LW2/G0;

.field public static final enum e:LW2/G0;

.field public static final enum f:LW2/G0;

.field public static final enum l:LW2/G0;

.field public static final enum m:LW2/G0;

.field public static final enum n:LW2/G0;

.field public static final enum o:LW2/G0;

.field public static final enum p:LW2/G0;

.field public static final enum q:LW2/G0;

.field public static final synthetic r:[LW2/G0;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, LW2/G0;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW2/G0;->a:LW2/G0;

    new-instance v1, LW2/G0;

    const-string v2, "BOOLEAN_VALUE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LW2/G0;->b:LW2/G0;

    new-instance v2, LW2/G0;

    const-string v3, "INTEGER_VALUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LW2/G0;->c:LW2/G0;

    new-instance v3, LW2/G0;

    const-string v4, "DOUBLE_VALUE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LW2/G0;->d:LW2/G0;

    new-instance v4, LW2/G0;

    const-string v5, "TIMESTAMP_VALUE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LW2/G0;->e:LW2/G0;

    new-instance v5, LW2/G0;

    const-string v6, "STRING_VALUE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LW2/G0;->f:LW2/G0;

    new-instance v6, LW2/G0;

    const-string v7, "BYTES_VALUE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LW2/G0;->l:LW2/G0;

    new-instance v7, LW2/G0;

    const-string v8, "REFERENCE_VALUE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, LW2/G0;->m:LW2/G0;

    new-instance v8, LW2/G0;

    const-string v9, "GEO_POINT_VALUE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, LW2/G0;->n:LW2/G0;

    new-instance v9, LW2/G0;

    const-string v10, "ARRAY_VALUE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, LW2/G0;->o:LW2/G0;

    new-instance v10, LW2/G0;

    const-string v11, "MAP_VALUE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, LW2/G0;->p:LW2/G0;

    new-instance v11, LW2/G0;

    const-string v12, "VALUETYPE_NOT_SET"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, LW2/G0;->q:LW2/G0;

    filled-new-array/range {v0 .. v11}, [LW2/G0;

    move-result-object v0

    sput-object v0, LW2/G0;->r:[LW2/G0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LW2/G0;
    .locals 1

    const-class v0, LW2/G0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW2/G0;

    return-object p0
.end method

.method public static values()[LW2/G0;
    .locals 1

    sget-object v0, LW2/G0;->r:[LW2/G0;

    invoke-virtual {v0}, [LW2/G0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW2/G0;

    return-object v0
.end method
