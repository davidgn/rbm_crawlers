.class public final Lr0/d;
.super Lr0/f;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/adservices/topics/TopicsManager;I)V
    .locals 0

    iput p2, p0, Lr0/d;->b:I

    invoke-direct {p0, p1}, Lr0/f;-><init>(Landroid/adservices/topics/TopicsManager;)V

    return-void
.end method


# virtual methods
.method public a(Lr0/a;)Landroid/adservices/topics/GetTopicsRequest;
    .locals 1

    iget v0, p0, Lr0/d;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lr0/f;->a(Lr0/a;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/api/a;->f()Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->g(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object v0

    iget-boolean p1, p1, Lr0/a;->a:Z

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/a;->h(Landroid/adservices/topics/GetTopicsRequest$Builder;Z)Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->i(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    const-string v0, "Builder()\n            .s\u2026ion)\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
