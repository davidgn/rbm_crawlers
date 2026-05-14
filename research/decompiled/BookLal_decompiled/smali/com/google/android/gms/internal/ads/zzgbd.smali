.class final Lcom/google/android/gms/internal/ads/zzgbd;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgbf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbd;->zzb:Lcom/google/android/gms/internal/ads/zzgbf;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgbd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbd;->zzb:Lcom/google/android/gms/internal/ads/zzgbf;

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgbd;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/u;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgbd;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgbd;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgbd;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lc4/a;->a:Lc4/a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgbd;->zza:I

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbd;->zzb:Lcom/google/android/gms/internal/ads/zzgbf;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgbd;->zza:I

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgbf;->zzk(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method
