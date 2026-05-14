.class public final synthetic Lcom/google/firebase/inappmessaging/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/internal/e;->a:I

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/e;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->b(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/e;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    invoke-static {v1, v0}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->a(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Ljava/util/ArrayList;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/e;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->d(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/e;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->c(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
