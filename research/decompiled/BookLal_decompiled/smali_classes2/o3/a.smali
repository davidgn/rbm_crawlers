.class public final enum Lo3/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lo3/a;

.field public static final enum c:Lo3/a;

.field public static final enum d:Lo3/a;

.field public static final enum e:Lo3/a;

.field public static final enum f:Lo3/a;

.field public static final enum l:Lo3/a;

.field public static final enum m:Lo3/a;

.field public static final enum n:Lo3/a;

.field public static final enum o:Lo3/a;

.field public static final enum p:Lo3/a;

.field public static final enum q:Lo3/a;

.field public static final enum r:Lo3/a;

.field public static final synthetic s:[Lo3/a;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v1, Lo3/a;

    move-object v0, v1

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo3/a;->b:Lo3/a;

    new-instance v2, Lo3/a;

    move-object v1, v2

    const-string v3, "PROTOCOL_ERROR"

    const/4 v6, 0x1

    invoke-direct {v2, v3, v6, v6}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lo3/a;->c:Lo3/a;

    new-instance v3, Lo3/a;

    move-object v2, v3

    const-string v4, "INVALID_STREAM"

    const/4 v7, 0x2

    invoke-direct {v3, v4, v7, v6}, Lo3/a;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lo3/a;

    move-object v3, v4

    const-string v5, "UNSUPPORTED_VERSION"

    const/4 v8, 0x3

    invoke-direct {v4, v5, v8, v6}, Lo3/a;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lo3/a;

    move-object v4, v5

    const-string v9, "STREAM_IN_USE"

    const/4 v10, 0x4

    invoke-direct {v5, v9, v10, v6}, Lo3/a;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lo3/a;

    move-object v5, v9

    const-string v10, "STREAM_ALREADY_CLOSED"

    const/4 v11, 0x5

    invoke-direct {v9, v10, v11, v6}, Lo3/a;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lo3/a;

    move-object v6, v9

    const-string v10, "INTERNAL_ERROR"

    const/4 v12, 0x6

    invoke-direct {v9, v10, v12, v7}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lo3/a;->d:Lo3/a;

    new-instance v9, Lo3/a;

    move-object v7, v9

    const-string v10, "FLOW_CONTROL_ERROR"

    const/4 v13, 0x7

    invoke-direct {v9, v10, v13, v8}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lo3/a;->e:Lo3/a;

    new-instance v9, Lo3/a;

    move-object v8, v9

    const-string v10, "STREAM_CLOSED"

    const/16 v14, 0x8

    invoke-direct {v9, v10, v14, v11}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lo3/a;->f:Lo3/a;

    new-instance v10, Lo3/a;

    move-object v9, v10

    const-string v11, "FRAME_TOO_LARGE"

    const/16 v15, 0x9

    invoke-direct {v10, v11, v15, v12}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lo3/a;->l:Lo3/a;

    new-instance v11, Lo3/a;

    move-object v10, v11

    const-string v12, "REFUSED_STREAM"

    const/16 v15, 0xa

    invoke-direct {v11, v12, v15, v13}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lo3/a;->m:Lo3/a;

    new-instance v12, Lo3/a;

    move-object v11, v12

    const-string v13, "CANCEL"

    const/16 v15, 0xb

    invoke-direct {v12, v13, v15, v14}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lo3/a;->n:Lo3/a;

    new-instance v13, Lo3/a;

    move-object v12, v13

    const-string v14, "COMPRESSION_ERROR"

    const/16 v15, 0xc

    move-object/from16 v19, v0

    const/16 v0, 0x9

    invoke-direct {v13, v14, v15, v0}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lo3/a;->o:Lo3/a;

    new-instance v0, Lo3/a;

    move-object v13, v0

    const-string v14, "CONNECT_ERROR"

    move-object/from16 v20, v1

    const/16 v1, 0xd

    const/16 v15, 0xa

    invoke-direct {v0, v14, v1, v15}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo3/a;->p:Lo3/a;

    new-instance v0, Lo3/a;

    move-object v14, v0

    const-string v15, "ENHANCE_YOUR_CALM"

    const/16 v1, 0xe

    move-object/from16 v21, v2

    const/16 v2, 0xb

    invoke-direct {v0, v15, v1, v2}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo3/a;->q:Lo3/a;

    new-instance v0, Lo3/a;

    const/16 v1, 0xc

    move-object v15, v0

    const-string v2, "INADEQUATE_SECURITY"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo3/a;->r:Lo3/a;

    new-instance v0, Lo3/a;

    move-object/from16 v16, v0

    const-string v1, "HTTP_1_1_REQUIRED"

    const/16 v2, 0x10

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lo3/a;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lo3/a;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const/4 v2, -0x1

    const-string v3, "INVALID_CREDENTIALS"

    invoke-direct {v0, v3, v1, v2}, Lo3/a;-><init>(Ljava/lang/String;II)V

    move-object/from16 v3, v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    filled-new-array/range {v0 .. v17}, [Lo3/a;

    move-result-object v0

    sput-object v0, Lo3/a;->s:[Lo3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo3/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo3/a;
    .locals 1

    const-class v0, Lo3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo3/a;

    return-object p0
.end method

.method public static values()[Lo3/a;
    .locals 1

    sget-object v0, Lo3/a;->s:[Lo3/a;

    invoke-virtual {v0}, [Lo3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo3/a;

    return-object v0
.end method
