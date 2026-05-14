.class public final synthetic Lcom/google/firebase/firestore/remote/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/firestore/remote/GrpcCallProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/i;->a:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/i;->a:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->g(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)Lj3/V;

    move-result-object v0

    return-object v0
.end method
