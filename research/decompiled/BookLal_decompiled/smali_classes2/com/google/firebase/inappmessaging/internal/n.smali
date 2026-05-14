.class public final synthetic Lcom/google/firebase/inappmessaging/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic a:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/firebase/inappmessaging/internal/j;

.field public final synthetic d:Lcom/google/firebase/inappmessaging/internal/m;

.field public final synthetic e:Lcom/google/firebase/inappmessaging/internal/k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/j;Lcom/google/firebase/inappmessaging/internal/m;Lcom/google/firebase/inappmessaging/internal/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/n;->a:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/n;->c:Lcom/google/firebase/inappmessaging/internal/j;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/n;->d:Lcom/google/firebase/inappmessaging/internal/m;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/n;->e:Lcom/google/firebase/inappmessaging/internal/k;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/n;->e:Lcom/google/firebase/inappmessaging/internal/k;

    move-object v5, p1

    check-cast v5, LZ2/j;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/n;->c:Lcom/google/firebase/inappmessaging/internal/j;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/n;->d:Lcom/google/firebase/inappmessaging/internal/m;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/n;->a:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/n;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->F(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/j;Lcom/google/firebase/inappmessaging/internal/m;Lcom/google/firebase/inappmessaging/internal/k;LZ2/j;)Lz3/h;

    move-result-object p1

    return-object p1
.end method
