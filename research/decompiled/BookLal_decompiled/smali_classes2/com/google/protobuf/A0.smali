.class public final enum Lcom/google/protobuf/A0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# static fields
.field public static final enum b:Lcom/google/protobuf/A0;

.field public static final enum c:Lcom/google/protobuf/A0;

.field public static final synthetic d:[Lcom/google/protobuf/A0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/protobuf/A0;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/A0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/A0;->b:Lcom/google/protobuf/A0;

    new-instance v1, Lcom/google/protobuf/A0;

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/protobuf/A0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/A0;->c:Lcom/google/protobuf/A0;

    filled-new-array {v0, v1}, [Lcom/google/protobuf/A0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/A0;->d:[Lcom/google/protobuf/A0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/protobuf/A0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/A0;
    .locals 1

    const-class v0, Lcom/google/protobuf/A0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/A0;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/A0;
    .locals 1

    sget-object v0, Lcom/google/protobuf/A0;->d:[Lcom/google/protobuf/A0;

    invoke-virtual {v0}, [Lcom/google/protobuf/A0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/A0;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/google/protobuf/A0;->c:Lcom/google/protobuf/A0;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/A0;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
