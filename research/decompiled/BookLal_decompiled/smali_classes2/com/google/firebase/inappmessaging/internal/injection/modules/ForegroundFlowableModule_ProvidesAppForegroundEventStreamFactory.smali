.class public final Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "LD3/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:LX3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX3/a;"
        }
    .end annotation
.end field

.field private final module:Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;LX3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;",
            "LX3/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;->module:Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;->applicationProvider:LX3/a;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;LX3/a;)Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;",
            "LX3/a;",
            ")",
            "Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;LX3/a;)V

    return-object v0
.end method

.method public static providesAppForegroundEventStream(Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;Landroid/app/Application;)LD3/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;",
            "Landroid/app/Application;",
            ")",
            "LD3/a;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;->providesAppForegroundEventStream(Landroid/app/Application;)LD3/a;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LD3/a;

    return-object p0
.end method


# virtual methods
.method public get()LD3/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LD3/a;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;->module:Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;->applicationProvider:LX3/a;

    invoke-interface {v1}, LX3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;->providesAppForegroundEventStream(Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;Landroid/app/Application;)LD3/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule_ProvidesAppForegroundEventStreamFactory;->get()LD3/a;

    move-result-object v0

    return-object v0
.end method
