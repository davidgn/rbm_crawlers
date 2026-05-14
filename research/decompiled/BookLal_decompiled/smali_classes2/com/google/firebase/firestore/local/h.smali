.class public final synthetic Lcom/google/firebase/firestore/local/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/firestore/local/LocalStore;

.field public final synthetic b:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

.field public final synthetic c:Lcom/google/firebase/firestore/core/Target;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/h;->a:Lcom/google/firebase/firestore/local/LocalStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/h;->b:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/h;->c:Lcom/google/firebase/firestore/core/Target;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/h;->b:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/h;->c:Lcom/google/firebase/firestore/core/Target;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/h;->a:Lcom/google/firebase/firestore/local/LocalStore;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->o(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V

    return-void
.end method
