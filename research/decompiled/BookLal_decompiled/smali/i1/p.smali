.class public final Li1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb1/e;

.field public final b:Ljava/util/List;

.field public final c:Lc1/e;


# direct methods
.method public constructor <init>(Lb1/e;Lc1/e;)V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Li1/p;->a:Lb1/e;

    invoke-static {v0, v1}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Li1/p;->b:Ljava/util/List;

    invoke-static {p2, v1}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Li1/p;->c:Lc1/e;

    return-void
.end method
