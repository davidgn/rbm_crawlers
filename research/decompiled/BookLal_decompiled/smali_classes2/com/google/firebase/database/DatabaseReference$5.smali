.class Lcom/google/firebase/database/DatabaseReference$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DatabaseReference;->setHijackHash(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/DatabaseReference;

.field final synthetic val$hijackHash:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/DatabaseReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/DatabaseReference$5;->this$0:Lcom/google/firebase/database/DatabaseReference;

    iput-boolean p2, p0, Lcom/google/firebase/database/DatabaseReference$5;->val$hijackHash:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference$5;->this$0:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-boolean v1, p0, Lcom/google/firebase/database/DatabaseReference$5;->val$hijackHash:Z

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->setHijackHash(Z)V

    return-void
.end method
