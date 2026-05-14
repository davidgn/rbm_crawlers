.class public enum Lcom/google/protobuf/m1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/google/protobuf/i1;

.field public static final enum d:Lcom/google/protobuf/j1;

.field public static final enum e:Lcom/google/protobuf/k1;

.field public static final synthetic f:[Lcom/google/protobuf/m1;


# instance fields
.field public final a:Lcom/google/protobuf/n1;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const/16 v9, 0x8

    new-instance v10, Lcom/google/protobuf/m1;

    sget-object v11, Lcom/google/protobuf/n1;->d:Lcom/google/protobuf/n1;

    const-string v12, "DOUBLE"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v10, v12, v13, v11, v14}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v11, Lcom/google/protobuf/m1;

    sget-object v12, Lcom/google/protobuf/n1;->c:Lcom/google/protobuf/n1;

    const-string v15, "FLOAT"

    const/4 v0, 0x5

    invoke-direct {v11, v15, v14, v12, v0}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v12, Lcom/google/protobuf/m1;

    sget-object v15, Lcom/google/protobuf/n1;->b:Lcom/google/protobuf/n1;

    const-string v1, "INT64"

    const/4 v2, 0x2

    invoke-direct {v12, v1, v2, v15, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v1, Lcom/google/protobuf/m1;

    const-string v3, "UINT64"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v15, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v3, Lcom/google/protobuf/m1;

    sget-object v5, Lcom/google/protobuf/n1;->a:Lcom/google/protobuf/n1;

    const-string v6, "INT32"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v7, v5, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v6, Lcom/google/protobuf/m1;

    const-string v7, "FIXED64"

    invoke-direct {v6, v7, v0, v15, v14}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v7, Lcom/google/protobuf/m1;

    const/4 v14, 0x6

    const-string v4, "FIXED32"

    invoke-direct {v7, v4, v14, v5, v0}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v4, Lcom/google/protobuf/m1;

    sget-object v14, Lcom/google/protobuf/n1;->e:Lcom/google/protobuf/n1;

    const-string v0, "BOOL"

    const/4 v8, 0x7

    invoke-direct {v4, v0, v8, v14, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v0, Lcom/google/protobuf/i1;

    sget-object v14, Lcom/google/protobuf/n1;->f:Lcom/google/protobuf/n1;

    const-string v8, "STRING"

    invoke-direct {v0, v8, v9, v14, v2}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    sput-object v0, Lcom/google/protobuf/m1;->c:Lcom/google/protobuf/i1;

    new-instance v8, Lcom/google/protobuf/j1;

    sget-object v14, Lcom/google/protobuf/n1;->n:Lcom/google/protobuf/n1;

    const-string v9, "GROUP"

    const/16 v2, 0x9

    const/4 v13, 0x3

    invoke-direct {v8, v9, v2, v14, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    sput-object v8, Lcom/google/protobuf/m1;->d:Lcom/google/protobuf/j1;

    new-instance v2, Lcom/google/protobuf/k1;

    const-string v9, "MESSAGE"

    move-object/from16 v18, v8

    const/16 v8, 0xa

    const/4 v13, 0x2

    invoke-direct {v2, v9, v8, v14, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    sput-object v2, Lcom/google/protobuf/m1;->e:Lcom/google/protobuf/k1;

    new-instance v8, Lcom/google/protobuf/l1;

    sget-object v9, Lcom/google/protobuf/n1;->l:Lcom/google/protobuf/n1;

    const-string v14, "BYTES"

    move-object/from16 v19, v2

    const/16 v2, 0xb

    invoke-direct {v8, v14, v2, v9, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v2, Lcom/google/protobuf/m1;

    const-string v9, "UINT32"

    const/4 v13, 0x0

    const/16 v14, 0xc

    invoke-direct {v2, v9, v14, v5, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v9, Lcom/google/protobuf/m1;

    sget-object v14, Lcom/google/protobuf/n1;->m:Lcom/google/protobuf/n1;

    move-object/from16 v17, v2

    const-string v2, "ENUM"

    move-object/from16 v20, v8

    const/16 v8, 0xd

    invoke-direct {v9, v2, v8, v14, v13}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v2, Lcom/google/protobuf/m1;

    const-string v8, "SFIXED32"

    const/16 v13, 0xe

    const/4 v14, 0x5

    invoke-direct {v2, v8, v13, v5, v14}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v8, Lcom/google/protobuf/m1;

    const-string v13, "SFIXED64"

    move-object/from16 v16, v2

    const/16 v2, 0xf

    const/4 v14, 0x1

    invoke-direct {v8, v13, v2, v15, v14}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v2, Lcom/google/protobuf/m1;

    const-string v13, "SINT32"

    move-object/from16 v21, v8

    const/16 v8, 0x10

    const/4 v14, 0x0

    invoke-direct {v2, v13, v8, v5, v14}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    new-instance v5, Lcom/google/protobuf/m1;

    const-string v8, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v5, v8, v13, v15, v14}, Lcom/google/protobuf/m1;-><init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V

    const/16 v8, 0x12

    new-array v8, v8, [Lcom/google/protobuf/m1;

    aput-object v10, v8, v14

    const/4 v10, 0x1

    aput-object v11, v8, v10

    const/4 v10, 0x2

    aput-object v12, v8, v10

    const/4 v10, 0x3

    aput-object v1, v8, v10

    const/4 v1, 0x4

    aput-object v3, v8, v1

    const/4 v1, 0x5

    aput-object v6, v8, v1

    const/4 v1, 0x6

    aput-object v7, v8, v1

    const/4 v1, 0x7

    aput-object v4, v8, v1

    const/16 v1, 0x8

    aput-object v0, v8, v1

    const/16 v0, 0x9

    aput-object v18, v8, v0

    const/16 v0, 0xa

    aput-object v19, v8, v0

    const/16 v0, 0xb

    aput-object v20, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v9, v8, v0

    const/16 v0, 0xe

    aput-object v16, v8, v0

    const/16 v0, 0xf

    aput-object v21, v8, v0

    const/16 v0, 0x10

    aput-object v2, v8, v0

    const/16 v0, 0x11

    aput-object v5, v8, v0

    sput-object v8, Lcom/google/protobuf/m1;->f:[Lcom/google/protobuf/m1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/protobuf/n1;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/protobuf/m1;->a:Lcom/google/protobuf/n1;

    iput p4, p0, Lcom/google/protobuf/m1;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/m1;
    .locals 1

    const-class v0, Lcom/google/protobuf/m1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m1;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/m1;
    .locals 1

    sget-object v0, Lcom/google/protobuf/m1;->f:[Lcom/google/protobuf/m1;

    invoke-virtual {v0}, [Lcom/google/protobuf/m1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/m1;

    return-object v0
.end method
