.class public final Lcom/google/android/gms/internal/ads/zzgbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfzv;


# instance fields
.field private final zza:Lt4/u;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgrm;

.field private final zzc:LB4/a;

.field private final zzd:LB4/a;

.field private final zze:LB4/a;

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/ads/zzfzt;

.field private zzh:Z

.field private final zzi:LX/f;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdwb;


# direct methods
.method public constructor <init>(LX/f;Lcom/google/android/gms/internal/ads/zzgah;Lcom/google/android/gms/internal/ads/zzdwb;Lcom/google/android/gms/internal/ads/zzgae;)V
    .locals 1

    const-string v0, "adQualityDataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScopeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataPinger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzj:Lcom/google/android/gms/internal/ads/zzdwb;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgah;->zza()Lt4/u;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zza:Lt4/u;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzgrm;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzb:Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-static {}, LB4/e;->a()LB4/d;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    invoke-static {}, LB4/e;->a()LB4/d;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzd:LB4/a;

    invoke-static {}, LB4/e;->a()LB4/d;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zze:LB4/a;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzi:LX/f;

    return-void
.end method

.method private final zzA(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgan;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgan;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgan;->zzd:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgan;->zzd:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgan;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgan;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgan;->zzb:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgan;->zzd:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgan;->zza:Ljava/lang/Object;

    check-cast v0, LB4/a;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgan;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zze:LB4/a;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgan;->zza:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzgan;->zzd:I

    invoke-interface {p1, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_4

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzi:LX/f;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgao;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzgao;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgan;->zza:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzgan;->zzd:I

    check-cast v2, LX/F;

    invoke-virtual {v2, v4, v0}, LX/F;->i(Lkotlin/jvm/functions/Function2;Ld4/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v0, v1, :cond_4

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_2
    :try_start_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0, v5}, LB4/a;->b(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_3
    invoke-interface {v0, v5}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method private final zzB(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/google/android/gms/internal/ads/zzgam;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgam;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgam;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgam;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgam;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzgam;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/google/android/gms/internal/ads/zzgam;->zzc:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgam;->zze:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/google/android/gms/internal/ads/zzgam;->zza:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgam;->zzb:Ljava/lang/Object;

    check-cast v0, LB4/a;

    invoke-static {p3}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    iput-object p3, v0, Lcom/google/android/gms/internal/ads/zzgam;->zzb:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzgam;->zza:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzgam;->zze:I

    invoke-interface {p3, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_5

    move-object v0, p3

    :goto_1
    const/4 p3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "adQualityDataBuilder"

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzi()J

    move-result-wide v3

    sub-long/2addr p1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfzt;->zzg()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(J)Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0, p3}, LB4/a;->b(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw p3

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-interface {v0, p3}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_5
    return-object v1
.end method

.method private final zzC(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgar;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgar;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgar;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgar;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgar;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgar;->zzc:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgar;->zze:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    check-cast v0, LB4/a;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Ljava/lang/Object;

    check-cast v2, LB4/a;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfzu;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzgar;->zze:I

    invoke-interface {v2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_6

    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-interface {v2, v3}, LB4/a;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zze:LB4/a;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Ljava/lang/Object;

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzgar;->zze:I

    invoke-interface {v2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v1, :cond_6

    move-object v5, p1

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzi:LX/f;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgas;

    invoke-direct {v6, v5, v3}, Lcom/google/android/gms/internal/ads/zzgas;-><init>(Lcom/google/android/gms/internal/ads/zzfzu;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgar;->zza:Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzgar;->zzb:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzgar;->zze:I

    check-cast p1, LX/F;

    invoke-virtual {p1, v6, v0}, LX/F;->i(Lkotlin/jvm/functions/Function2;Ld4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq p1, v1, :cond_6

    move-object v0, v2

    :goto_3
    :try_start_3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzy;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0, v3}, LB4/a;->b(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_4
    invoke-interface {v0, v3}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_5
    :try_start_4
    const-string p1, "adQualityDataBuilder"

    invoke-static {p1}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_5
    invoke-interface {v2, v3}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_6
    return-object v1
.end method

.method private static final zzD(Lcom/google/android/gms/internal/ads/zzfzu;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzu;->zzk()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/Long;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzu;->zzl()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzu;->zzm()I

    move-result v3

    const/4 v4, 0x0

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzu;->zzd()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzu;->zzi()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x1388

    cmp-long p0, v7, v5

    if-lez p0, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v4

    :goto_2
    if-nez v0, :cond_5

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    return v4

    :cond_5
    :goto_3
    return v2
.end method

.method public static final synthetic zzh(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zzs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzi(Lcom/google/android/gms/internal/ads/zzgbf;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzt(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzj(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zzu(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzk(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zzv(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzl(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zzw(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzm(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zzx(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzn(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zzy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzo(Lcom/google/android/gms/internal/ads/zzgbf;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzz(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzp(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zzA(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzq(Lcom/google/android/gms/internal/ads/zzgbf;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgbf;->zzB(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzr(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgbf;->zzC(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final zzs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgba;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgba;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgba;->zzd:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgba;->zzd:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgba;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgba;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgba;->zzb:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgba;->zzd:I

    sget-object v3, LY3/j;->a:LY3/j;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgba;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgba;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zze:LB4/a;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgba;->zza:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzgba;->zzd:I

    invoke-interface {p1, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_9

    move-object v2, p1

    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzi:LX/f;

    check-cast p1, LX/F;

    iget-object p1, p1, LX/F;->c:Li1/D;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgba;->zza:Ljava/lang/Object;

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzgba;->zzd:I

    invoke-static {p1, v0}, Lw4/i;->a(Li1/D;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_9

    :goto_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2, v7}, LB4/a;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zza()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzy;->zzb()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfzu;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzidd;->zzbp()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v5

    const-string v8, "toBuilder(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v8, "<get-value>(...)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfzu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzD(Lcom/google/android/gms/internal/ads/zzfzu;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfzt;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfzt;

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzj:Lcom/google/android/gms/internal/ads/zzdwb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v5

    const-string v8, "build(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfzu;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzdwb;->zza(Lcom/google/android/gms/internal/ads/zzfzu;)Z

    goto :goto_3

    :cond_7
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzgba;->zza:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzgba;->zzd:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgbf;->zzA(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_6

    :cond_8
    :goto_4
    return-object v3

    :goto_5
    invoke-interface {v2, v7}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_6
    return-object v1
.end method

.method private final zzt(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzgau;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgau;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgau;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgau;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgau;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzgau;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzgau;->zzc:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgau;->zze:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzgau;->zzb:J

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgau;->zza:Ljava/lang/Object;

    check-cast p1, LB4/a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgau;->zzf:Ljava/lang/String;

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgau;->zzf:Ljava/lang/String;

    iput-object p2, v0, Lcom/google/android/gms/internal/ads/zzgau;->zza:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzgau;->zzb:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzgau;->zze:I

    invoke-interface {p2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_4

    move-object v0, p1

    move-object p1, p2

    move-wide v1, v4

    :goto_1
    const/4 p2, 0x0

    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v5, LY3/j;->a:LY3/j;

    if-eqz v4, :cond_3

    invoke-interface {p1, p2}, LB4/a;->b(Ljava/lang/Object;)V

    return-object v5

    :cond_3
    :try_start_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzf:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzu;->zzp()Lcom/google/android/gms/internal/ads/zzfzu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzidd;->zzbp()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v3

    const-string v4, "toBuilder(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfzt;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfzt;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzt;->zzj(J)Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1, p2}, LB4/a;->b(Ljava/lang/Object;)V

    return-object v5

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, LB4/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_4
    return-object v1
.end method

.method private final zzu(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgaq;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgaq;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgaq;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zzc:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zze:I

    sget-object v3, LY3/j;->a:LY3/j;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zzb:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzd:LB4/a;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zza:Ljava/lang/Object;

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zze:I

    invoke-interface {v2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_9

    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_6

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    return-object v3

    :cond_6
    :try_start_1
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzh:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zza:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zzb:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zze:I

    invoke-interface {v2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_9

    move-wide v7, v8

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzfzt;->zzo(J)Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zza:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zze:I

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/gms/internal/ads/zzgbf;->zzB(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_6

    :cond_7
    :goto_3
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzgaq;->zze:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgbf;->zzC(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_9

    :goto_4
    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_8
    :try_start_3
    const-string p1, "adQualityDataBuilder"

    invoke-static {p1}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_6
    return-object v1
.end method

.method private final zzv(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgbe;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbe;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgbe;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zzc:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zze:I

    sget-object v3, LY3/j;->a:LY3/j;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zza:Ljava/lang/Object;

    check-cast v0, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzd:LB4/a;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zza:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zze:I

    invoke-interface {v2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_f

    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_4

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    return-object v3

    :cond_4
    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzh:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zza:Ljava/lang/Object;

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zzb:J

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzgbe;->zze:I

    invoke-interface {p1, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_f

    move-object v0, p1

    move-wide v1, v7

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "adQualityDataBuilder"

    if-eqz p1, :cond_e

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzr()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, "last(...)"

    if-lez p1, :cond_8

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzq()Ljava/util/List;

    move-result-object p1

    const-string v8, "getAdClickTimestampsMsList(...)"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LZ3/g;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    sub-long v8, v1, v8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzt()Lcom/google/android/gms/internal/ads/zzfzt;

    const-wide/16 v10, 0x1388

    cmp-long p1, v8, v10

    if-gez p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzc()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/ads/zzfzt;->zzd(I)Lcom/google/android/gms/internal/ads/zzfzt;

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzn()I

    move-result p1

    if-lez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzm()Ljava/util/List;

    move-result-object p1

    const-string v6, "getAppBackgroundTimestampsMsList(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LZ3/g;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long v6, v1, v6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzg()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {p1, v8, v9}, Lcom/google/android/gms/internal/ads/zzfzt;->zzh(J)Lcom/google/android/gms/internal/ads/zzfzt;

    goto :goto_4

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzt;->zzp(J)Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0, v4}, LB4/a;->b(Ljava/lang/Object;)V

    return-object v3

    :cond_c
    :try_start_5
    invoke-static {v5}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    invoke-interface {v0, v4}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_f
    return-object v1
.end method

.method private final zzw(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgay;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgay;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgay;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgay;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgay;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgay;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgay;->zzc:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgay;->zze:I

    sget-object v3, LY3/j;->a:LY3/j;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgay;->zza:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfzu;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzgay;->zzb:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgay;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgay;->zza:Ljava/lang/Object;

    check-cast v2, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgay;->zza:Ljava/lang/Object;

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzgay;->zze:I

    invoke-interface {v2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_c

    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_6

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    return-object v3

    :cond_6
    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzf:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgay;->zza:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzgay;->zzb:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzgay;->zze:I

    invoke-interface {v2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_c

    move-wide v7, v8

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "adQualityDataBuilder"

    if-eqz p1, :cond_b

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzt;->zzi()J

    move-result-wide v10

    sub-long v10, v7, v10

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfzt;->zzg()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(J)Lcom/google/android/gms/internal/ads/zzfzt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzfzt;->zzl(J)Lcom/google/android/gms/internal/ads/zzfzt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzu;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgay;->zza:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzgay;->zze:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgbf;->zzC(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_c

    move-object v2, p1

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzj:Lcom/google/android/gms/internal/ads/zzdwb;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdwb;->zza(Lcom/google/android/gms/internal/ads/zzfzu;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfzu;->zza()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getGwsQueryId(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzgay;->zza:Ljava/lang/Object;

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzgay;->zze:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgbf;->zzz(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_6

    :cond_7
    :goto_4
    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_8
    :try_start_4
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_9
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    invoke-interface {v2, v4}, LB4/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_c
    :goto_6
    return-object v1
.end method

.method private final zzx(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzgbc;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgbc;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zze:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zze:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgbc;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzgbc;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zzc:Ljava/lang/Object;

    sget-object v3, Lc4/a;->a:Lc4/a;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zze:I

    sget-object v5, LY3/j;->a:LY3/j;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zza:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfzu;

    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zzb:J

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zza:Ljava/lang/Object;

    check-cast v4, LB4/a;

    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zza:Ljava/lang/Object;

    check-cast v4, LB4/a;

    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zza:Ljava/lang/Object;

    iput v10, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zze:I

    invoke-interface {v4, v2}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v3, :cond_d

    :goto_1
    :try_start_0
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_6

    invoke-interface {v4, v6}, LB4/a;->b(Ljava/lang/Object;)V

    return-object v5

    :cond_6
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzf:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v4, v6}, LB4/a;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zza:Ljava/lang/Object;

    iput-wide v11, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zzb:J

    iput v9, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zze:I

    invoke-interface {v4, v2}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v3, :cond_d

    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "adQualityDataBuilder"

    if-eqz v0, :cond_c

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzt;->zzi()J

    move-result-wide v13

    sub-long v13, v11, v13

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfzt;->zzg()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-virtual {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(J)Lcom/google/android/gms/internal/ads/zzfzt;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzfzt;->zzk(J)Lcom/google/android/gms/internal/ads/zzfzt;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfzt;->zze(Z)Lcom/google/android/gms/internal/ads/zzfzt;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfzu;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v4, v6}, LB4/a;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zza:Ljava/lang/Object;

    iput v8, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zze:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzC(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_d

    move-object v4, v0

    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzgbf;->zzj:Lcom/google/android/gms/internal/ads/zzdwb;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzdwb;->zza(Lcom/google/android/gms/internal/ads/zzfzu;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfzu;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getGwsQueryId(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zza:Ljava/lang/Object;

    iput v7, v2, Lcom/google/android/gms/internal/ads/zzgbc;->zze:I

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzz(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    goto :goto_6

    :cond_7
    :goto_4
    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_8
    :try_start_4
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v6

    :cond_9
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v6

    :cond_a
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v6

    :cond_b
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v6

    :cond_c
    invoke-static {v9}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    invoke-interface {v4, v6}, LB4/a;->b(Ljava/lang/Object;)V

    throw v0

    :catchall_1
    move-exception v0

    invoke-interface {v4, v6}, LB4/a;->b(Ljava/lang/Object;)V

    throw v0

    :cond_d
    :goto_6
    return-object v3
.end method

.method private final zzy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgaw;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgaw;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgaw;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zzc:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zze:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zza:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zzb:Ljava/lang/Object;

    check-cast v0, LB4/a;

    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzc:LB4/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zzb:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zza:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzgaw;->zze:I

    invoke-interface {p1, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_4

    move-object v0, p1

    move-wide v1, v4

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzg:Lcom/google/android/gms/internal/ads/zzfzt;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfzt;->zzs(J)Lcom/google/android/gms/internal/ads/zzfzt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, LB4/a;->b(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :try_start_1
    const-string v1, "adQualityDataBuilder"

    invoke-static {v1}, Lkotlin/jvm/internal/i;->l(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {v0, p1}, LB4/a;->b(Ljava/lang/Object;)V

    throw v1

    :cond_4
    return-object v1
.end method

.method private final zzz(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzgak;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgak;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgak;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgak;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgak;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzgak;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzgak;->zzc:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgak;->zze:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgak;->zza:Ljava/lang/Object;

    check-cast p1, LB4/a;

    :try_start_0
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Ljava/lang/Object;

    check-cast p1, LB4/a;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgak;->zza:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zze:LB4/a;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgak;->zza:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzgak;->zze:I

    invoke-interface {p2, v0}, LB4/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_4

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzi:LX/f;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzgal;

    invoke-direct {v4, p1, v5}, Lcom/google/android/gms/internal/ads/zzgal;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lcom/google/android/gms/internal/ads/zzgak;->zza:Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzgak;->zzb:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzgak;->zze:I

    check-cast v2, LX/F;

    invoke-virtual {v2, v4, v0}, LX/F;->i(Lkotlin/jvm/functions/Function2;Ld4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq p1, v1, :cond_4

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_2
    :try_start_2
    check-cast p2, Lcom/google/android/gms/internal/ads/zzfzy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1, v5}, LB4/a;->b(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_3
    invoke-interface {p1, v5}, LB4/a;->b(Ljava/lang/Object;)V

    throw p2

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final zza()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgaz;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zza:Lt4/u;

    invoke-static {v1, v0}, Lt4/w;->l(Lt4/u;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gwsQueryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgat;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zza:Lt4/u;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzb:Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgrp;->zza(Lt4/u;Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;)Lt4/z;

    return-void
.end method

.method public final zzc()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgap;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zza:Lt4/u;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzb:Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgrp;->zza(Lt4/u;Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;)Lt4/z;

    return-void
.end method

.method public final zzd()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgbd;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zza:Lt4/u;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzb:Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgrp;->zza(Lt4/u;Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;)Lt4/z;

    return-void
.end method

.method public final zze()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgax;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgax;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zza:Lt4/u;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzb:Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgrp;->zza(Lt4/u;Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;)Lt4/z;

    return-void
.end method

.method public final zzf()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgbb;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zza:Lt4/u;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzb:Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgrp;->zza(Lt4/u;Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;)Lt4/z;

    return-void
.end method

.method public final zzg()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgav;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgav;-><init>(Lcom/google/android/gms/internal/ads/zzgbf;Lkotlin/coroutines/Continuation;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zza:Lt4/u;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbf;->zzb:Lcom/google/android/gms/internal/ads/zzgrm;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgrp;->zza(Lt4/u;Lcom/google/android/gms/internal/ads/zzgrm;Lkotlin/jvm/functions/Function2;)Lt4/z;

    return-void
.end method
