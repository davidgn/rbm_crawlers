.class public final synthetic Le/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Le/i;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/b;

.field public final synthetic d:Lf/a;


# direct methods
.method public synthetic constructor <init>(Le/i;Ljava/lang/String;Le/b;Lf/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d;->a:Le/i;

    iput-object p2, p0, Le/d;->b:Ljava/lang/String;

    iput-object p3, p0, Le/d;->c:Le/b;

    iput-object p4, p0, Le/d;->d:Lf/a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 5

    iget-object p1, p0, Le/d;->a:Le/i;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/d;->b:Ljava/lang/String;

    const-string v1, "$key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/d;->c:Le/b;

    const-string v2, "$callback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/d;->d:Lf/a;

    const-string v3, "$contract"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    iget-object v4, p1, Le/i;->e:Ljava/util/LinkedHashMap;

    if-ne v3, p2, :cond_1

    new-instance p2, Le/e;

    invoke-direct {p2, v2, v1}, Le/e;-><init>(Lf/a;Le/b;)V

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Le/i;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Le/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p1, Le/i;->g:Landroid/os/Bundle;

    invoke-static {p1, v0}, La/a;->h(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget p1, p2, Le/a;->a:I

    iget-object p2, p2, Le/a;->b:Landroid/content/Intent;

    invoke-virtual {v2, p1, p2}, Lf/a;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Le/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    if-ne v1, p2, :cond_2

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    if-ne v1, p2, :cond_3

    invoke-virtual {p1, v0}, Le/i;->f(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
