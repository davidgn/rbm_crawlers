.class public final Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
        ">;"
    }
.end annotation


# instance fields
.field private final computeSchedulerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final ioSchedulerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final mainThreadSchedulerProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LX3/a;LX3/a;LX3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->ioSchedulerProvider:LX3/a;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->computeSchedulerProvider:LX3/a;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->mainThreadSchedulerProvider:LX3/a;

    return-void
.end method

.method public static create(LX3/a;LX3/a;LX3/a;)Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX3/a;",
            "LX3/a;",
            "LX3/a;",
            ")",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;-><init>(LX3/a;LX3/a;LX3/a;)V

    return-object v0
.end method

.method public static newInstance(Lz3/p;Lz3/p;Lz3/p;)Lcom/google/firebase/inappmessaging/internal/Schedulers;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/Schedulers;-><init>(Lz3/p;Lz3/p;Lz3/p;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/Schedulers;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->ioSchedulerProvider:LX3/a;

    invoke-interface {v0}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz3/p;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->computeSchedulerProvider:LX3/a;

    invoke-interface {v1}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz3/p;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->mainThreadSchedulerProvider:LX3/a;

    invoke-interface {v2}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz3/p;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->newInstance(Lz3/p;Lz3/p;Lz3/p;)Lcom/google/firebase/inappmessaging/internal/Schedulers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/Schedulers_Factory;->get()Lcom/google/firebase/inappmessaging/internal/Schedulers;

    move-result-object v0

    return-object v0
.end method
