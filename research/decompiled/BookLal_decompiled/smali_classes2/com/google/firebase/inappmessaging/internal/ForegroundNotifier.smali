.class public Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private final foregroundSubject:LV3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV3/b;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    new-instance v0, LV3/b;

    invoke-direct {v0}, LV3/b;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:LV3/b;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->lambda$onActivityPaused$0()V

    return-void
.end method

.method private synthetic lambda$onActivityPaused$0()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    return-void
.end method


# virtual methods
.method public foregroundFlowable()LD3/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LD3/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:LV3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LK3/m;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, LK3/m;-><init>(Ljava/lang/Object;I)V

    sget v0, Lz3/d;->a:I

    const-string v2, "bufferSize"

    invoke-static {v0, v2}, LG3/d;->b(ILjava/lang/String;)V

    new-instance v2, LK3/M;

    invoke-direct {v2, v1, v0}, LK3/M;-><init>(LK3/m;I)V

    invoke-virtual {v2}, Lz3/d;->c()LK3/Q;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    new-instance v0, LB/a;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, LB/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    iget-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "went foreground"

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:LV3/b;

    const-string v0, "ON_FOREGROUND"

    invoke-virtual {p1, v0}, LV3/b;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
