.class public final enum Lj3/q0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lj3/q0;

.field public static final enum d:Lj3/q0;

.field public static final enum e:Lj3/q0;

.field public static final enum f:Lj3/q0;

.field public static final enum l:Lj3/q0;

.field public static final enum m:Lj3/q0;

.field public static final enum n:Lj3/q0;

.field public static final enum o:Lj3/q0;

.field public static final enum p:Lj3/q0;

.field public static final enum q:Lj3/q0;

.field public static final enum r:Lj3/q0;

.field public static final enum s:Lj3/q0;

.field public static final enum t:Lj3/q0;

.field public static final enum u:Lj3/q0;

.field public static final enum v:Lj3/q0;

.field public static final enum w:Lj3/q0;

.field public static final enum x:Lj3/q0;

.field public static final synthetic y:[Lj3/q0;


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lj3/q0;

    move-object v0, v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lj3/q0;->c:Lj3/q0;

    new-instance v2, Lj3/q0;

    move-object v1, v2

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lj3/q0;->d:Lj3/q0;

    new-instance v3, Lj3/q0;

    move-object v2, v3

    const-string v4, "UNKNOWN"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lj3/q0;->e:Lj3/q0;

    new-instance v4, Lj3/q0;

    move-object v3, v4

    const-string v5, "INVALID_ARGUMENT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lj3/q0;->f:Lj3/q0;

    new-instance v5, Lj3/q0;

    move-object v4, v5

    const-string v6, "DEADLINE_EXCEEDED"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lj3/q0;->l:Lj3/q0;

    new-instance v6, Lj3/q0;

    move-object v5, v6

    const-string v7, "NOT_FOUND"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lj3/q0;->m:Lj3/q0;

    new-instance v7, Lj3/q0;

    move-object v6, v7

    const-string v8, "ALREADY_EXISTS"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lj3/q0;->n:Lj3/q0;

    new-instance v8, Lj3/q0;

    move-object v7, v8

    const-string v9, "PERMISSION_DENIED"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lj3/q0;->o:Lj3/q0;

    new-instance v9, Lj3/q0;

    move-object v8, v9

    const-string v10, "RESOURCE_EXHAUSTED"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lj3/q0;->p:Lj3/q0;

    new-instance v10, Lj3/q0;

    move-object v9, v10

    const-string v11, "FAILED_PRECONDITION"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lj3/q0;->q:Lj3/q0;

    new-instance v11, Lj3/q0;

    move-object v10, v11

    const-string v12, "ABORTED"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lj3/q0;->r:Lj3/q0;

    new-instance v12, Lj3/q0;

    move-object v11, v12

    const-string v13, "OUT_OF_RANGE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lj3/q0;->s:Lj3/q0;

    new-instance v13, Lj3/q0;

    move-object v12, v13

    const-string v14, "UNIMPLEMENTED"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lj3/q0;->t:Lj3/q0;

    new-instance v14, Lj3/q0;

    move-object v13, v14

    const-string v15, "INTERNAL"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lj3/q0;->u:Lj3/q0;

    new-instance v0, Lj3/q0;

    move-object v14, v0

    const-string v15, "UNAVAILABLE"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lj3/q0;->v:Lj3/q0;

    new-instance v0, Lj3/q0;

    move-object v15, v0

    const-string v1, "DATA_LOSS"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lj3/q0;->w:Lj3/q0;

    new-instance v0, Lj3/q0;

    move-object/from16 v16, v0

    const-string v1, "UNAUTHENTICATED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lj3/q0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lj3/q0;->x:Lj3/q0;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lj3/q0;

    move-result-object v0

    sput-object v0, Lj3/q0;->y:[Lj3/q0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lj3/q0;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, LJ2/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lj3/q0;->b:[B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj3/q0;
    .locals 1

    const-class v0, Lj3/q0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj3/q0;

    return-object p0
.end method

.method public static values()[Lj3/q0;
    .locals 1

    sget-object v0, Lj3/q0;->y:[Lj3/q0;

    invoke-virtual {v0}, [Lj3/q0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj3/q0;

    return-object v0
.end method


# virtual methods
.method public final a()Lj3/r0;
    .locals 2

    sget-object v0, Lj3/r0;->d:Ljava/util/List;

    iget v1, p0, Lj3/q0;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/r0;

    return-object v0
.end method
