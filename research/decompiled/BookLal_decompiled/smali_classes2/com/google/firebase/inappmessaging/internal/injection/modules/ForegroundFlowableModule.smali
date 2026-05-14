.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesAppForegroundEventStream(Landroid/app/Application;)LD3/a;
    .locals 2
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "LD3/a;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundFlowable()LD3/a;

    move-result-object v1

    invoke-virtual {v1}, LD3/a;->f()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v1
.end method
