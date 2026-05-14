.class public final synthetic LY0/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/I;->a:I

    iput-object p1, p0, LY0/I;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, LY0/I;->b:Ljava/lang/Object;

    iget v1, p0, LY0/I;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lz3/i;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->f(Lz3/i;Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/core/FirestoreClient;->g(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Exception;)V

    return-void

    :pswitch_1
    sget-object p1, Lcom/booklal/booklal/MainActivity;->z:Landroid/widget/CheckBox;

    check-cast v0, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/booklal/booklal/MainActivity;->y:J

    invoke-virtual {v0}, Lcom/booklal/booklal/MainActivity;->l()V

    const-string p1, "Security verification failed. Please try again later."

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_2
    sget p1, Lcom/booklal/booklal/Dashboard;->G0:I

    const-string p1, "CONFIG"

    const-string v1, "Using default config"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, LY0/E;

    invoke-virtual {v0}, LY0/E;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
