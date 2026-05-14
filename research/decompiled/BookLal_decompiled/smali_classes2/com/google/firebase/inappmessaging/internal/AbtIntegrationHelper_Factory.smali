.class public final Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final abTestingProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final blockingExecutorProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LX3/a;LX3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            "LX3/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;->abTestingProvider:LX3/a;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;->blockingExecutorProvider:LX3/a;

    return-void
.end method

.method public static create(LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            "LX3/a;",
            ")",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;-><init>(LX3/a;LX3/a;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/abt/FirebaseABTesting;Ljava/util/concurrent/Executor;)Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;-><init>(Lcom/google/firebase/abt/FirebaseABTesting;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;->abTestingProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/abt/FirebaseABTesting;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;->blockingExecutorProvider:LX3/a;

    invoke-interface {v1}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;->newInstance(Lcom/google/firebase/abt/FirebaseABTesting;Ljava/util/concurrent/Executor;)Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper_Factory;->get()Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    move-result-object v0

    return-object v0
.end method
