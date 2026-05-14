.class public final synthetic LY0/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/booklal/booklal/Dashboard;


# direct methods
.method public synthetic constructor <init>(Lcom/booklal/booklal/Dashboard;I)V
    .locals 0

    iput p2, p0, LY0/G;->a:I

    iput-object p1, p0, LY0/G;->b:Lcom/booklal/booklal/Dashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LY0/G;->b:Lcom/booklal/booklal/Dashboard;

    iget v1, p0, LY0/G;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    sget p1, Lcom/booklal/booklal/Dashboard;->G0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LY0/X0;->a:LC4/A;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, LY0/l;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, LY0/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LY0/E;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LY0/E;-><init>(Lcom/booklal/booklal/Dashboard;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    sget v1, Lcom/booklal/booklal/Dashboard;->G0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->u:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "Latitude"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/Dashboard;->r0:Ljava/lang/Double;

    const-string v1, "Longitude"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v0, Lcom/booklal/booklal/Dashboard;->s0:Ljava/lang/Double;

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->r0:Ljava/lang/Double;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->r0:Ljava/lang/Double;

    const-string v2, ""

    invoke-static {p1, v1, v2}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/booklal/booklal/Dashboard;->t0:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/booklal/booklal/Dashboard;->s0:Ljava/lang/Double;

    invoke-static {p1, v1, v2}, LC/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/booklal/booklal/Dashboard;->u0:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
