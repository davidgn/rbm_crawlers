.class public final synthetic Lcom/google/firebase/database/connection/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/e;->a:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-boolean p2, p0, Lcom/google/firebase/database/connection/e;->b:Z

    iput-boolean p3, p0, Lcom/google/firebase/database/connection/e;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/e;->c:Z

    iget-object v1, p0, Lcom/google/firebase/database/connection/e;->a:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-boolean v2, p0, Lcom/google/firebase/database/connection/e;->b:Z

    invoke-static {v1, v2, v0}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->d(Lcom/google/firebase/database/connection/PersistentConnectionImpl;ZZ)V

    return-void
.end method
