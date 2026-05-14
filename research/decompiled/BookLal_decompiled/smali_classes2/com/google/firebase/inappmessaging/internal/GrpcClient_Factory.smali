.class public final Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/GrpcClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final stubProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LX3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->stubProvider:LX3/a;

    return-void
.end method

.method public static create(LX3/a;)Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            ")",
            "Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;-><init>(LX3/a;)V

    return-object v0
.end method

.method public static newInstance(LZ2/k;)Lcom/google/firebase/inappmessaging/internal/GrpcClient;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/GrpcClient;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/GrpcClient;-><init>(LZ2/k;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/GrpcClient;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->stubProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ2/k;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->newInstance(LZ2/k;)Lcom/google/firebase/inappmessaging/internal/GrpcClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->get()Lcom/google/firebase/inappmessaging/internal/GrpcClient;

    move-result-object v0

    return-object v0
.end method
