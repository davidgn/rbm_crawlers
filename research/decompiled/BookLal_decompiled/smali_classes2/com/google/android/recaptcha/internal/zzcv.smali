.class final Lcom/google/android/recaptcha/internal/zzcv;
.super Ld4/c;
.source "SourceFile"


# instance fields
.field synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/recaptcha/internal/zzda;

.field zzc:I

.field zzd:Lcom/google/android/recaptcha/internal/zzda;

.field zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzda;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzcv;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    invoke-direct {p0, p2}, Ld4/c;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzcv;->zza:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/recaptcha/internal/zzcv;->zzc:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/recaptcha/internal/zzcv;->zzc:I

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzcv;->zzb:Lcom/google/android/recaptcha/internal/zzda;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/recaptcha/internal/zzda;->zzf(Lcom/google/android/recaptcha/RecaptchaAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lc4/a;->a:Lc4/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, LY3/g;

    invoke-direct {v0, p1}, LY3/g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
