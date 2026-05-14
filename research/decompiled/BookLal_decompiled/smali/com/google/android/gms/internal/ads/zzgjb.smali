.class public final Lcom/google/android/gms/internal/ads/zzgjb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzimd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjb;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgjb;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgjb;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgjb;->zzd:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzgjb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgjb;-><init>(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjb;->zzd:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjb;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjb;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgjb;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzilt;->zzc(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzilo;

    move-result-object v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzilt;->zzc(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzilo;

    move-result-object v6

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzilt;->zzc(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzilo;

    move-result-object v7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgcf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcf;->zzk()Lcom/google/android/gms/internal/ads/zzgcz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgcz;->zza()Z

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcf;->zzk()Lcom/google/android/gms/internal/ads/zzgcz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcz;->zzd()J

    move-result-wide v9

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzgja;-><init>(Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzilo;ZJ)V

    return-object v1
.end method
