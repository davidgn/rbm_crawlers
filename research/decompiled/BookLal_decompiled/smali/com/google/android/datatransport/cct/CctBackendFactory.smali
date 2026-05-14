.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(LT1/c;)LT1/h;
    .locals 3

    new-instance v0, LQ1/e;

    check-cast p1, LT1/b;

    iget-object v1, p1, LT1/b;->a:Landroid/content/Context;

    iget-object v2, p1, LT1/b;->b:Lb2/a;

    iget-object p1, p1, LT1/b;->c:Lb2/a;

    invoke-direct {v0, v1, v2, p1}, LQ1/e;-><init>(Landroid/content/Context;Lb2/a;Lb2/a;)V

    return-object v0
.end method
