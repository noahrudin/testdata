.class public final Lcom/google/android/gms/measurement/internal/zzft;
.super Lcom/google/android/gms/measurement/internal/zzfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfn;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfm;-><init>(Lcom/google/android/gms/measurement/internal/zzfn;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu;
    .locals 4

    .line 39
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzft;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzfu;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 40
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzfu;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    .line 327
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfk;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p3, Lcom/google/android/gms/internal/measurement/zzfk;->zzavu:Ljava/lang/Boolean;

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/zzfk;->zzavv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    .line 289
    iget-object v1, p3, Lcom/google/android/gms/internal/measurement/zzfk;->zzavs:Lcom/google/android/gms/internal/measurement/zzfn;

    const-string v2, "}\n"

    if-eqz v1, :cond_4

    .line 291
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter"

    .line 292
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    .line 293
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfn;->zzawe:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfn;->zzawe:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "UNKNOWN_MATCH_TYPE"

    goto :goto_0

    :pswitch_0
    const-string v3, "IN_LIST"

    goto :goto_0

    :pswitch_1
    const-string v3, "EXACT"

    goto :goto_0

    :pswitch_2
    const-string v3, "PARTIAL"

    goto :goto_0

    :pswitch_3
    const-string v3, "ENDS_WITH"

    goto :goto_0

    :pswitch_4
    const-string v3, "BEGINS_WITH"

    goto :goto_0

    :pswitch_5
    const-string v3, "REGEXP"

    :goto_0
    const-string v4, "match_type"

    .line 308
    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 309
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfn;->zzawf:Ljava/lang/String;

    const-string v4, "expression"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 310
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfn;->zzawg:Ljava/lang/Boolean;

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 311
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfn;->zzawh:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 312
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    .line 313
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzfn;->zzawh:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    add-int/lit8 v6, v0, 0x2

    .line 315
    invoke-static {p1, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 316
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 317
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 319
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 321
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_4
    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/zzfk;->zzavt:Lcom/google/android/gms/internal/measurement/zzfl;

    const-string v1, "number_filter"

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfl;)V

    .line 323
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 324
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfl;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 263
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {\n"

    .line 264
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzfl;->zzavw:Ljava/lang/Integer;

    if-eqz p3, :cond_5

    .line 267
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzfl;->zzavw:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const-string p3, "UNKNOWN_COMPARISON_TYPE"

    goto :goto_0

    :cond_1
    const-string p3, "BETWEEN"

    goto :goto_0

    :cond_2
    const-string p3, "EQUAL"

    goto :goto_0

    :cond_3
    const-string p3, "GREATER_THAN"

    goto :goto_0

    :cond_4
    const-string p3, "LESS_THAN"

    :goto_0
    const-string v0, "comparison_type"

    .line 275
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 276
    :cond_5
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzfl;->zzavx:Ljava/lang/Boolean;

    const-string v0, "match_as_float"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 277
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzfl;->zzavy:Ljava/lang/String;

    const-string v0, "comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 278
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzfl;->zzavz:Ljava/lang/String;

    const-string v0, "min_comparison_value"

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 279
    iget-object p3, p4, Lcom/google/android/gms/internal/measurement/zzfl;->zzawa:Ljava/lang/String;

    const-string p4, "max_comparison_value"

    invoke-static {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "}\n"

    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x3

    .line 206
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    move-object/from16 v3, p3

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzayq:[J

    const/16 v4, 0xa

    const/4 v5, 0x4

    const-string v6, ", "

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    .line 210
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "results: "

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzayq:[J

    array-length v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    aget-wide v11, v3, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-eqz v10, :cond_1

    .line 215
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_3
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzayp:[J

    if-eqz v3, :cond_6

    .line 220
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "status: "

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzayp:[J

    array-length v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    aget-wide v11, v3, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-eqz v10, :cond_4

    .line 225
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_1

    .line 228
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzbb(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "}\n"

    if-eqz v3, :cond_e

    .line 230
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzayr:[Lcom/google/android/gms/internal/measurement/zzfs;

    if-eqz v3, :cond_9

    .line 231
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "dynamic_filter_timestamps: {"

    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzayr:[Lcom/google/android/gms/internal/measurement/zzfs;

    array-length v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v8, :cond_8

    aget-object v11, v3, v9

    add-int/lit8 v12, v10, 0x1

    if-eqz v10, :cond_7

    .line 236
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_7
    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzfs;->zzawz:Ljava/lang/Integer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzfs;->zzaxa:Ljava/lang/Long;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_2

    .line 239
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_9
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzays:[Lcom/google/android/gms/internal/measurement/zzfy;

    if-eqz v3, :cond_e

    .line 241
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "sequence_filter_timestamps: {"

    .line 242
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzays:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v3, v1

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v5, v3, :cond_d

    aget-object v9, v1, v5

    add-int/lit8 v10, v8, 0x1

    if-eqz v8, :cond_a

    .line 246
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_a
    iget-object v8, v9, Lcom/google/android/gms/internal/measurement/zzfy;->zzawz:Ljava/lang/Integer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v8, v9, Lcom/google/android/gms/internal/measurement/zzfy;->zzayu:[J

    array-length v9, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v11, v9, :cond_c

    aget-wide v13, v8, v11

    add-int/lit8 v15, v12, 0x1

    if-eqz v12, :cond_b

    .line 251
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_b
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move v12, v15

    goto :goto_4

    :cond_c
    const-string v8, "]"

    .line 254
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move v8, v10

    goto :goto_3

    .line 256
    :cond_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_e
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 258
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 332
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 333
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 334
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 336
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static zza([JI)Z
    .locals 6

    .line 363
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 365
    :cond_0
    div-int/lit8 v0, p1, 0x40

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v4, p1

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method static zza(Ljava/util/BitSet;)[J
    .locals 10

    .line 366
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 367
    new-array v2, v0, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const-wide/16 v5, 0x0

    .line 369
    aput-wide v5, v2, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    shl-int/lit8 v6, v4, 0x6

    add-int/2addr v6, v5

    .line 371
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 372
    invoke-virtual {p0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 373
    aget-wide v6, v2, v4

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    aput-wide v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method static zza([Lcom/google/android/gms/internal/measurement/zzfu;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzfu;
    .locals 5

    .line 53
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    .line 54
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzfu;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x0

    .line 55
    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzfu;->zzaxg:Ljava/lang/Long;

    .line 56
    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzfu;->zzamn:Ljava/lang/String;

    .line 57
    iput-object p1, v3, Lcom/google/android/gms/internal/measurement/zzfu;->zzaup:Ljava/lang/Double;

    .line 58
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 59
    check-cast p2, Ljava/lang/Long;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzfu;->zzaxg:Ljava/lang/Long;

    goto :goto_1

    .line 60
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 61
    check-cast p2, Ljava/lang/String;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzfu;->zzamn:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_1
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_2

    .line 63
    check-cast p2, Ljava/lang/Double;

    iput-object p2, v3, Lcom/google/android/gms/internal/measurement/zzfu;->zzaup:Ljava/lang/Double;

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_4
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzfu;

    .line 67
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzfu;-><init>()V

    .line 69
    iput-object p1, v1, Lcom/google/android/gms/internal/measurement/zzfu;->name:Ljava/lang/String;

    .line 70
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_5

    .line 71
    check-cast p2, Ljava/lang/Long;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzfu;->zzaxg:Ljava/lang/Long;

    goto :goto_2

    .line 72
    :cond_5
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 73
    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzfu;->zzamn:Ljava/lang/String;

    goto :goto_2

    .line 74
    :cond_6
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_7

    .line 75
    check-cast p2, Ljava/lang/Double;

    iput-object p2, v1, Lcom/google/android/gms/internal/measurement/zzfu;->zzaup:Ljava/lang/Double;

    .line 76
    :cond_7
    :goto_2
    array-length p0, p0

    aput-object v1, v0, p0

    return-object v0
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Lcom/google/android/gms/internal/measurement/zzft;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfu;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zzamn:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zzamn:Ljava/lang/String;

    return-object p0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zzaxg:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 49
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zzaxg:Ljava/lang/Long;

    return-object p0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zzaup:Ljava/lang/Double;

    if-eqz p1, :cond_2

    .line 51
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfu;->zzaup:Ljava/lang/Double;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzcs(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 439
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 340
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 341
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 342
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 343
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 347
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 350
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfj;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfj;->zzavm:Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfj;->zzavn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 185
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfj;->zzavq:Lcom/google/android/gms/internal/measurement/zzfl;

    const/4 v3, 0x1

    const-string v4, "event_count_filter"

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfl;)V

    const-string v1, "  filters {\n"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfj;->zzavo:[Lcom/google/android/gms/internal/measurement/zzfk;

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    const/4 v5, 0x2

    .line 188
    invoke-direct {p0, v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfk;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfm;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfm;->zzavm:Ljava/lang/Integer;

    const/4 v2, 0x0

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfm;->zzawc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 200
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 201
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfm;->zzawd:Lcom/google/android/gms/internal/measurement/zzfk;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfk;)V

    const-string p1, "}\n"

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfu;Ljava/lang/Object;)V
    .locals 1

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfu;->zzamn:Ljava/lang/String;

    .line 18
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfu;->zzaxg:Ljava/lang/Long;

    .line 19
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfu;->zzaup:Ljava/lang/Double;

    .line 20
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzfu;->zzamn:Ljava/lang/String;

    return-void

    .line 22
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 23
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzfu;->zzaxg:Ljava/lang/Long;

    return-void

    .line 24
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 25
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzfu;->zzaup:Ljava/lang/Double;

    return-void

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfz;Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzamn:Ljava/lang/String;

    .line 6
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzaxg:Ljava/lang/Long;

    .line 7
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzaup:Ljava/lang/Double;

    .line 8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzamn:Ljava/lang/String;

    return-void

    .line 10
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 11
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzaxg:Ljava/lang/Long;

    return-void

    .line 12
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 13
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzaup:Ljava/lang/Double;

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfv;)[B
    .locals 3

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyi;->zzvx()I

    move-result v0

    .line 29
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 31
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzya;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzya;

    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzyi;->zza(Lcom/google/android/gms/internal/measurement/zzya;)V

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzya;->zzza()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Data loss. Failed to serialize batch"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zza([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 381
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 382
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 383
    new-array v2, v2, [B

    .line 384
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 386
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 389
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 390
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 392
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    throw p1
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 436
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzaf()V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzfv;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p1

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    .line 79
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfv;->zzaxh:[Lcom/google/android/gms/internal/measurement/zzfw;

    const-string v7, "}\n"

    if-eqz v1, :cond_b

    .line 81
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/zzfv;->zzaxh:[Lcom/google/android/gms/internal/measurement/zzfw;

    array-length v9, v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_b

    aget-object v12, v8, v11

    if-eqz v12, :cond_a

    if-eqz v12, :cond_a

    const/4 v13, 0x1

    .line 85
    invoke-static {v6, v13}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "bundle {\n"

    .line 86
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxj:Ljava/lang/Integer;

    const-string v1, "protocol_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxr:Ljava/lang/String;

    const-string v1, "platform"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxv:Ljava/lang/Long;

    const-string v1, "gmp_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxw:Ljava/lang/Long;

    const-string v1, "uploading_gmp_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayh:Ljava/lang/Long;

    const-string v1, "config_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzafi:Ljava/lang/String;

    const-string v1, "gmp_app_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzawr:Ljava/lang/String;

    const-string v1, "admob_app_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zztt:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzts:Ljava/lang/String;

    const-string v1, "app_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayd:Ljava/lang/Integer;

    const-string v1, "app_version_major"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzafk:Ljava/lang/String;

    const-string v1, "firebase_instance_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxz:Ljava/lang/Long;

    const-string v1, "dev_cert_hash"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzafp:Ljava/lang/String;

    const-string v1, "app_store"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxm:Ljava/lang/Long;

    const-string v1, "upload_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxn:Ljava/lang/Long;

    const-string v1, "start_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxo:Ljava/lang/Long;

    const-string v1, "end_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxp:Ljava/lang/Long;

    const-string v1, "previous_bundle_start_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxq:Ljava/lang/Long;

    const-string v1, "previous_bundle_end_timestamp_millis"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzafh:Ljava/lang/String;

    const-string v1, "app_instance_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxx:Ljava/lang/String;

    const-string v1, "resettable_device_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayg:Ljava/lang/String;

    const-string v1, "device_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayj:Ljava/lang/String;

    const-string v1, "ds_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxy:Ljava/lang/Boolean;

    const-string v1, "limited_ad_tracking"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxs:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxt:Ljava/lang/String;

    const-string v1, "device_model"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzahr:Ljava/lang/String;

    const-string v1, "user_default_language"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxu:Ljava/lang/Integer;

    const-string v1, "time_zone_offset_minutes"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaya:Ljava/lang/Integer;

    const-string v1, "bundle_sequential_index"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayb:Ljava/lang/Boolean;

    const-string v1, "service_upload"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzagm:Ljava/lang/String;

    const-string v1, "health_monitor"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayi:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayi:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 118
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayi:Ljava/lang/Long;

    const-string v1, "android_id"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_0
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayl:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayl:Ljava/lang/Integer;

    const-string v1, "retry_counter"

    invoke-static {v6, v13, v1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_1
    iget-object v0, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxl:[Lcom/google/android/gms/internal/measurement/zzfz;

    const-string v14, "double_value"

    const-string v15, "int_value"

    const-string v5, "string_value"

    const-string v4, "name"

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 123
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v10, v0, v2

    if-eqz v10, :cond_2

    .line 125
    invoke-static {v6, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v13, "user_property {\n"

    .line 126
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzfz;->zzayw:Ljava/lang/Long;

    move-object/from16 v16, v0

    const-string v0, "set_timestamp_millis"

    invoke-static {v6, v3, v0, v13}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    iget-object v13, v10, Lcom/google/android/gms/internal/measurement/zzfz;->name:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/zzfz;->zzamn:Ljava/lang/String;

    invoke-static {v6, v3, v5, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/zzfz;->zzaxg:Ljava/lang/Long;

    invoke-static {v6, v3, v15, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-object v0, v10, Lcom/google/android/gms/internal/measurement/zzfz;->zzaup:Ljava/lang/Double;

    invoke-static {v6, v3, v14, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-static {v6, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    move-object/from16 v16, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    const/4 v13, 0x1

    goto :goto_1

    .line 135
    :cond_3
    iget-object v10, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzayc:[Lcom/google/android/gms/internal/measurement/zzfr;

    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zztt:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 137
    array-length v2, v10

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v0, v10, v1

    if-eqz v0, :cond_4

    .line 139
    invoke-static {v6, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "audience_membership {\n"

    .line 140
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzavg:Ljava/lang/Integer;

    move/from16 v17, v1

    const-string v1, "audience_id"

    move/from16 v18, v2

    const/4 v2, 0x2

    invoke-static {v6, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzawx:Ljava/lang/Boolean;

    const-string v3, "new_audience"

    invoke-static {v6, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 143
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzawv:Lcom/google/android/gms/internal/measurement/zzfx;

    const-string v16, "current_data"

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object v1, v6

    const/16 v21, 0x2

    move v2, v3

    move-object/from16 v3, v16

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    move-object/from16 v16, v8

    move-object v8, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)V

    const/4 v2, 0x2

    move-object/from16 v0, v19

    .line 144
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzaww:Lcom/google/android/gms/internal/measurement/zzfx;

    const-string v3, "previous_data"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfx;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 145
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v4

    move-object/from16 v16, v8

    const/4 v0, 0x2

    move-object v8, v5

    :goto_4
    add-int/lit8 v1, v17, 0x1

    move-object v5, v8

    move-object/from16 v8, v16

    move/from16 v2, v18

    move-object/from16 v4, v22

    const/4 v3, 0x2

    goto :goto_3

    :cond_5
    move-object/from16 v22, v4

    move-object/from16 v16, v8

    const/4 v0, 0x2

    move-object v8, v5

    .line 148
    iget-object v1, v12, Lcom/google/android/gms/internal/measurement/zzfw;->zzaxk:[Lcom/google/android/gms/internal/measurement/zzft;

    if-eqz v1, :cond_9

    .line 150
    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    if-eqz v4, :cond_8

    .line 152
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v5, "event {\n"

    .line 153
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    iget-object v10, v4, Lcom/google/android/gms/internal/measurement/zzft;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, v22

    invoke-static {v6, v0, v10, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzft;->zzaxd:Ljava/lang/Long;

    const-string v12, "timestamp_millis"

    invoke-static {v6, v0, v12, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzft;->zzaxe:Ljava/lang/Long;

    const-string v12, "previous_timestamp_millis"

    invoke-static {v6, v0, v12, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 157
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzft;->count:Ljava/lang/Integer;

    const-string v12, "count"

    invoke-static {v6, v0, v12, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzft;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzfu;

    if-eqz v4, :cond_7

    .line 160
    array-length v5, v4

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v5, :cond_7

    aget-object v13, v4, v12

    if-eqz v13, :cond_6

    const/4 v0, 0x3

    .line 162
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "param {\n"

    .line 163
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    move-object/from16 v18, v1

    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzfu;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v6, v1, v10, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 165
    iget-object v0, v13, Lcom/google/android/gms/internal/measurement/zzfu;->zzamn:Ljava/lang/String;

    invoke-static {v6, v1, v8, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v0, v13, Lcom/google/android/gms/internal/measurement/zzfu;->zzaxg:Ljava/lang/Long;

    invoke-static {v6, v1, v15, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v0, v13, Lcom/google/android/gms/internal/measurement/zzfu;->zzaup:Ljava/lang/Double;

    invoke-static {v6, v1, v14, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-static {v6, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_6
    move-object/from16 v18, v1

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v18

    const/4 v0, 0x2

    goto :goto_6

    :cond_7
    move-object/from16 v18, v1

    .line 171
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 172
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_8
    move-object/from16 v18, v1

    move-object/from16 v10, v22

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v22, v10

    move-object/from16 v1, v18

    goto/16 :goto_5

    :cond_9
    const/4 v0, 0x1

    .line 174
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/StringBuilder;I)V

    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_a
    move-object/from16 v16, v8

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v16

    goto/16 :goto_0

    .line 177
    :cond_b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb(JJ)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    cmp-long v3, p3, v1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-lez v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method final zzb([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 396
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 397
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 398
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 399
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    throw p1
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 438
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)Z
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 351
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafi:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzk;->zzafv:Ljava/lang/String;

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzgf()V
    .locals 0

    .line 433
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .locals 0

    .line 434
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .locals 0

    .line 435
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .locals 1

    .line 437
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .locals 1

    .line 440
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfx;
    .locals 1

    .line 441
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .locals 1

    .line 443
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .locals 1

    .line 444
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 445
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 446
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzjr()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    .line 430
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjr()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjs()Lcom/google/android/gms/measurement/internal/zzm;
    .locals 1

    .line 431
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjs()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjt()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    .line 432
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method final zzmi()[I
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzft;->zzamx:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzm(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 404
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 406
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 407
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzakg:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 408
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 410
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    .line 415
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 416
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 424
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 426
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v6, v4, 0x1

    .line 427
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object v1
.end method
