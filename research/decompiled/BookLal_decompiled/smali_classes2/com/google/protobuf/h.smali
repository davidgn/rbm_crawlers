.class public final Lcom/google/protobuf/h;
.super Lcom/google/protobuf/i;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lcom/google/protobuf/m;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/h;->c:Lcom/google/protobuf/m;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/h;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/m;->size()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/h;->b:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget v0, p0, Lcom/google/protobuf/h;->a:I

    iget v1, p0, Lcom/google/protobuf/h;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/protobuf/h;->a:I

    iget-object v1, p0, Lcom/google/protobuf/h;->c:Lcom/google/protobuf/m;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/m;->q(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/h;->a:I

    iget v1, p0, Lcom/google/protobuf/h;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
