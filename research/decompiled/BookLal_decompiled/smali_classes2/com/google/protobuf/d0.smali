.class public final enum Lcom/google/protobuf/d0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/protobuf/d0;

.field public static final enum b:Lcom/google/protobuf/d0;

.field public static final enum c:Lcom/google/protobuf/d0;

.field public static final enum d:Lcom/google/protobuf/d0;

.field public static final enum e:Lcom/google/protobuf/d0;

.field public static final enum f:Lcom/google/protobuf/d0;

.field public static final enum l:Lcom/google/protobuf/d0;

.field public static final enum m:Lcom/google/protobuf/d0;

.field public static final enum n:Lcom/google/protobuf/d0;

.field public static final enum o:Lcom/google/protobuf/d0;

.field public static final synthetic p:[Lcom/google/protobuf/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/protobuf/d0;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v0, Lcom/google/protobuf/d0;->a:Lcom/google/protobuf/d0;

    new-instance v1, Lcom/google/protobuf/d0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Integer;

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v1, Lcom/google/protobuf/d0;->b:Lcom/google/protobuf/d0;

    new-instance v2, Lcom/google/protobuf/d0;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x2

    const-class v7, Ljava/lang/Long;

    const-string v8, "LONG"

    invoke-direct {v2, v8, v5, v7, v3}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v2, Lcom/google/protobuf/d0;->c:Lcom/google/protobuf/d0;

    new-instance v3, Lcom/google/protobuf/d0;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x3

    const-class v8, Ljava/lang/Float;

    const-string v9, "FLOAT"

    invoke-direct {v3, v9, v7, v8, v5}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v3, Lcom/google/protobuf/d0;->d:Lcom/google/protobuf/d0;

    new-instance v5, Lcom/google/protobuf/d0;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x4

    const-class v9, Ljava/lang/Double;

    const-string v10, "DOUBLE"

    invoke-direct {v5, v10, v8, v9, v7}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v5, Lcom/google/protobuf/d0;->e:Lcom/google/protobuf/d0;

    new-instance v7, Lcom/google/protobuf/d0;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x5

    const-class v10, Ljava/lang/Boolean;

    const-string v11, "BOOLEAN"

    invoke-direct {v7, v11, v9, v10, v8}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v7, Lcom/google/protobuf/d0;->f:Lcom/google/protobuf/d0;

    new-instance v8, Lcom/google/protobuf/d0;

    const-string v9, "STRING"

    const/4 v10, 0x6

    const-class v11, Ljava/lang/String;

    const-string v12, ""

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v8, Lcom/google/protobuf/d0;->l:Lcom/google/protobuf/d0;

    new-instance v9, Lcom/google/protobuf/d0;

    sget-object v10, Lcom/google/protobuf/m;->b:Lcom/google/protobuf/l;

    const/4 v11, 0x7

    const-class v12, Lcom/google/protobuf/m;

    const-string v13, "BYTE_STRING"

    invoke-direct {v9, v13, v11, v12, v10}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v9, Lcom/google/protobuf/d0;->m:Lcom/google/protobuf/d0;

    new-instance v10, Lcom/google/protobuf/d0;

    const-string v11, "ENUM"

    const/16 v12, 0x8

    invoke-direct {v10, v11, v12, v6, v4}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v10, Lcom/google/protobuf/d0;->n:Lcom/google/protobuf/d0;

    new-instance v11, Lcom/google/protobuf/d0;

    const-string v6, "MESSAGE"

    const/16 v12, 0x9

    const-class v13, Ljava/lang/Object;

    invoke-direct {v11, v6, v12, v13, v4}, Lcom/google/protobuf/d0;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V

    sput-object v11, Lcom/google/protobuf/d0;->o:Lcom/google/protobuf/d0;

    move-object v4, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    filled-new-array/range {v0 .. v9}, [Lcom/google/protobuf/d0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/d0;->p:[Lcom/google/protobuf/d0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/d0;
    .locals 1

    const-class v0, Lcom/google/protobuf/d0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/d0;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/d0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/d0;->p:[Lcom/google/protobuf/d0;

    invoke-virtual {v0}, [Lcom/google/protobuf/d0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/d0;

    return-object v0
.end method
