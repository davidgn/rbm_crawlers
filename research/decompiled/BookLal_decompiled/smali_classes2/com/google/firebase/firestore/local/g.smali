.class public final synthetic Lcom/google/firebase/firestore/local/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/firestore/local/LocalStore;

.field public final synthetic b:Lcom/google/firebase/firestore/bundle/NamedQuery;

.field public final synthetic c:Lcom/google/firebase/firestore/local/TargetData;

.field public final synthetic d:I

.field public final synthetic e:Lcom/google/firebase/database/collection/ImmutableSortedSet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/bundle/NamedQuery;Lcom/google/firebase/firestore/local/TargetData;ILcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/g;->a:Lcom/google/firebase/firestore/local/LocalStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/g;->b:Lcom/google/firebase/firestore/bundle/NamedQuery;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/g;->c:Lcom/google/firebase/firestore/local/TargetData;

    iput p4, p0, Lcom/google/firebase/firestore/local/g;->d:I

    iput-object p5, p0, Lcom/google/firebase/firestore/local/g;->e:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/firestore/local/g;->c:Lcom/google/firebase/firestore/local/TargetData;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/g;->a:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/g;->b:Lcom/google/firebase/firestore/bundle/NamedQuery;

    iget v3, p0, Lcom/google/firebase/firestore/local/g;->d:I

    iget-object v4, p0, Lcom/google/firebase/firestore/local/g;->e:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/firebase/firestore/local/LocalStore;->h(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/bundle/NamedQuery;Lcom/google/firebase/firestore/local/TargetData;ILcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-void
.end method
