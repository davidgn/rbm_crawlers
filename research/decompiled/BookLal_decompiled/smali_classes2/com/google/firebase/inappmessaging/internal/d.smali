.class public final synthetic Lcom/google/firebase/inappmessaging/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field public final synthetic c:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/firebase/inappmessaging/internal/d;->a:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/d;->c:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/d;->b:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/d;->c:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/d;->b:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/d;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/inappmessaging/model/Action;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->b(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/d;->c:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/d;->b:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/d;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->a(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
