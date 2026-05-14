.class final Lcom/google/android/recaptcha/Recaptcha$getClient$1;
.super Ld4/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/recaptcha/Recaptcha;->getClient-0E7RQCE(Landroid/app/Application;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/recaptcha/Recaptcha;

.field zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/Recaptcha;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zzb:Lcom/google/android/recaptcha/Recaptcha;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zza:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zzc:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zzc:I

    iget-object p1, p0, Lcom/google/android/recaptcha/Recaptcha$getClient$1;->zzb:Lcom/google/android/recaptcha/Recaptcha;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/google/android/recaptcha/Recaptcha;->getClient-0E7RQCE(Landroid/app/Application;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lc4/a;->a:Lc4/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, LY3/g;

    invoke-direct {v0, p1}, LY3/g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
