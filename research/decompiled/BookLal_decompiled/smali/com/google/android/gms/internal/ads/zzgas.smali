.class final Lcom/google/android/gms/internal/ads/zzgas;
.super Ld4/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfzu;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgas;->zzb:Lcom/google/android/gms/internal/ads/zzfzu;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ld4/h;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgas;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgas;->zzb:Lcom/google/android/gms/internal/ads/zzfzu;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgas;-><init>(Lcom/google/android/gms/internal/ads/zzfzu;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgas;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzy;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgas;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgas;

    sget-object p2, LY3/j;->a:LY3/j;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgas;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgas;->zza:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbp()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzz;->zza(Lcom/google/android/gms/internal/ads/zzfzw;)Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzb()Lcom/google/android/gms/internal/ads/zzigj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgas;->zzb:Lcom/google/android/gms/internal/ads/zzfzu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfzu;->zza()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGwsQueryId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzc(Lcom/google/android/gms/internal/ads/zzigj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfzu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zza()Lcom/google/android/gms/internal/ads/zzfzy;

    move-result-object p1

    return-object p1
.end method
