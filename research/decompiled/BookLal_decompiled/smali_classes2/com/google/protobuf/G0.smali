.class public final Lcom/google/protobuf/G0;
.super Lcom/google/protobuf/i;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/H0;

.field public b:Lcom/google/protobuf/i;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/I0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/protobuf/H0;

    invoke-direct {v0, p1}, Lcom/google/protobuf/H0;-><init>(Lcom/google/protobuf/m;)V

    iput-object v0, p0, Lcom/google/protobuf/G0;->a:Lcom/google/protobuf/H0;

    invoke-virtual {p0}, Lcom/google/protobuf/G0;->b()Lcom/google/protobuf/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/G0;->b:Lcom/google/protobuf/i;

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/G0;->b:Lcom/google/protobuf/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/i;->a()B

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/G0;->b:Lcom/google/protobuf/i;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/G0;->b()Lcom/google/protobuf/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/G0;->b:Lcom/google/protobuf/i;

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/google/protobuf/h;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/G0;->a:Lcom/google/protobuf/H0;

    invoke-virtual {v0}, Lcom/google/protobuf/H0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/H0;->a()Lcom/google/protobuf/l;

    move-result-object v0

    new-instance v1, Lcom/google/protobuf/h;

    invoke-direct {v1, v0}, Lcom/google/protobuf/h;-><init>(Lcom/google/protobuf/m;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/G0;->b:Lcom/google/protobuf/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
