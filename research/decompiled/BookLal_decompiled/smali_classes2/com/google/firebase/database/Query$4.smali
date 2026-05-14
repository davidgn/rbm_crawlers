.class Lcom/google/firebase/database/Query$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/Query;->keepSynced(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/Query;

.field final synthetic val$keepSynced:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/Query;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/Query$4;->this$0:Lcom/google/firebase/database/Query;

    iput-boolean p2, p0, Lcom/google/firebase/database/Query$4;->val$keepSynced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/Query$4;->this$0:Lcom/google/firebase/database/Query;

    iget-object v1, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    invoke-virtual {v0}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/firebase/database/Query$4;->val$keepSynced:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/database/core/Repo;->keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;Z)V

    return-void
.end method
