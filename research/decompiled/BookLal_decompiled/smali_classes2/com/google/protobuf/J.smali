.class public final enum Lcom/google/protobuf/J;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/protobuf/J;

.field public static final enum b:Lcom/google/protobuf/J;

.field public static final enum c:Lcom/google/protobuf/J;

.field public static final enum d:Lcom/google/protobuf/J;

.field public static final enum e:Lcom/google/protobuf/J;

.field public static final enum f:Lcom/google/protobuf/J;

.field public static final enum l:Lcom/google/protobuf/J;

.field public static final synthetic m:[Lcom/google/protobuf/J;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/protobuf/J;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/J;->a:Lcom/google/protobuf/J;

    new-instance v1, Lcom/google/protobuf/J;

    const-string v2, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/J;->b:Lcom/google/protobuf/J;

    new-instance v2, Lcom/google/protobuf/J;

    const-string v3, "BUILD_MESSAGE_INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/protobuf/J;->c:Lcom/google/protobuf/J;

    new-instance v3, Lcom/google/protobuf/J;

    const-string v4, "NEW_MUTABLE_INSTANCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/protobuf/J;->d:Lcom/google/protobuf/J;

    new-instance v4, Lcom/google/protobuf/J;

    const-string v5, "NEW_BUILDER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/protobuf/J;->e:Lcom/google/protobuf/J;

    new-instance v5, Lcom/google/protobuf/J;

    const-string v6, "GET_DEFAULT_INSTANCE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/protobuf/J;->f:Lcom/google/protobuf/J;

    new-instance v6, Lcom/google/protobuf/J;

    const-string v7, "GET_PARSER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/protobuf/J;->l:Lcom/google/protobuf/J;

    filled-new-array/range {v0 .. v6}, [Lcom/google/protobuf/J;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/J;->m:[Lcom/google/protobuf/J;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/J;
    .locals 1

    const-class v0, Lcom/google/protobuf/J;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/J;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/J;
    .locals 1

    sget-object v0, Lcom/google/protobuf/J;->m:[Lcom/google/protobuf/J;

    invoke-virtual {v0}, [Lcom/google/protobuf/J;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/J;

    return-object v0
.end method
