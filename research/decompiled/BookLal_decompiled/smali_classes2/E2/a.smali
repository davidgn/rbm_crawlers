.class public abstract LE2/a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x0

    const v1, 0xffffff

    const/4 v2, 0x1

    if-le p1, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_1
    move-object p3, p0

    check-cast p3, LD2/g;

    const/4 p4, 0x2

    if-ne p1, p4, :cond_6

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    sget p4, LE2/b;->a:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-nez p4, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    :goto_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    move-result p2

    if-gtz p2, :cond_5

    iget-object p2, p3, LD2/g;->c:LD2/h;

    iget-object p2, p2, LD2/h;->a:LE2/l;

    if-eqz p2, :cond_4

    iget-object p4, p3, LD2/g;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p2, LE2/l;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p2, LE2/l;->e:Ljava/util/HashSet;

    invoke-virtual {v3, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p4, p2, LE2/l;->f:Ljava/lang/Object;

    monitor-enter p4

    :try_start_1
    iget-object v1, p2, LE2/l;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p2, LE2/l;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_3

    iget-object p2, p2, LE2/l;->b:LE2/f;

    const-string v1, "Leaving the connection open for other ongoing calls."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v3}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p4, LE2/j;

    invoke-direct {p4, p2, v0}, LE2/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2}, LE2/l;->a()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_4
    :goto_2
    iget-object p2, p3, LD2/g;->a:LE2/f;

    const-string p4, "onGetLaunchReviewFlowInfo"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p4, v0}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "confirmation_intent"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    const-string p4, "is_review_no_op"

    invoke-virtual {p1, p4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p3, p3, LD2/g;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p4, LD2/c;

    invoke-direct {p4, p2, p1}, LD2/c;-><init>(Landroid/app/PendingIntent;Z)V

    invoke-virtual {p3, p4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_3

    :cond_5
    new-instance p1, Landroid/os/BadParcelableException;

    const-string p3, "Parcel data not fully consumed, unread size: "

    invoke-static {p2, p3}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    return v0
.end method
