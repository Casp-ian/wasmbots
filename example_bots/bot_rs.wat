(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32)))
  (type (;8;) (func (param i64) (result i64)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (param i64 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (import "env" "logFunction" (func (;0;) (type 4)))
  (func (;1;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    local.get 0
    i32.load
    i32.load8_u
    i32.const 2
    i32.shl
    local.tee 0
    i32.const 1048964
    i32.add
    i32.load
    local.get 0
    i32.const 1048944
    i32.add
    i32.load
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0))
  (func (;2;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u offset=37
          i32.eqz
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        local.get 1
        i32.load offset=4
        local.set 3
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 4
          local.get 1
          i32.load offset=8
          local.tee 5
          i32.gt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 1
          i32.load offset=12
          local.tee 6
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 20
          i32.add
          local.tee 7
          local.get 1
          i32.load8_u offset=24
          local.tee 8
          i32.add
          i32.const -1
          i32.add
          i32.load8_u
          local.tee 9
          i32.const 16843009
          i32.mul
          local.set 10
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              i32.const 4
              i32.gt_u
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 3
                local.get 6
                i32.add
                local.set 11
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    local.get 6
                    i32.sub
                    local.tee 12
                    i32.const 7
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 6
                    i32.eq
                    br_if 4 (;@4;)
                    i32.const 0
                    local.set 13
                    loop  ;; label = @9
                      local.get 11
                      local.get 13
                      i32.add
                      i32.load8_u
                      local.get 9
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 12
                      local.get 13
                      i32.const 1
                      i32.add
                      local.tee 13
                      i32.ne
                      br_if 0 (;@9;)
                      br 5 (;@4;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 11
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.tee 13
                        local.get 11
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 13
                        local.get 11
                        i32.sub
                        local.set 14
                        i32.const 0
                        local.set 13
                        loop  ;; label = @11
                          local.get 11
                          local.get 13
                          i32.add
                          i32.load8_u
                          local.get 9
                          i32.eq
                          br_if 4 (;@7;)
                          local.get 14
                          local.get 13
                          i32.const 1
                          i32.add
                          local.tee 13
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 14
                        local.get 12
                        i32.const -8
                        i32.add
                        local.tee 15
                        i32.gt_u
                        br_if 2 (;@8;)
                        br 1 (;@9;)
                      end
                      local.get 12
                      i32.const -8
                      i32.add
                      local.set 15
                      i32.const 0
                      local.set 14
                    end
                    loop  ;; label = @9
                      i32.const 16843008
                      local.get 11
                      local.get 14
                      i32.add
                      local.tee 13
                      i32.load
                      local.get 10
                      i32.xor
                      local.tee 16
                      i32.sub
                      local.get 16
                      i32.or
                      i32.const 16843008
                      local.get 13
                      i32.const 4
                      i32.add
                      i32.load
                      local.get 10
                      i32.xor
                      local.tee 13
                      i32.sub
                      local.get 13
                      i32.or
                      i32.and
                      i32.const -2139062144
                      i32.and
                      i32.const -2139062144
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 14
                      i32.const 8
                      i32.add
                      local.tee 14
                      local.get 15
                      i32.le_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 14
                  local.get 12
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 11
                  local.get 14
                  i32.add
                  local.set 11
                  local.get 4
                  local.get 14
                  i32.sub
                  local.get 6
                  i32.sub
                  local.set 16
                  i32.const 0
                  local.set 13
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 11
                      local.get 13
                      i32.add
                      i32.load8_u
                      local.get 9
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 16
                      local.get 13
                      i32.const 1
                      i32.add
                      local.tee 13
                      i32.ne
                      br_if 0 (;@9;)
                      br 5 (;@4;)
                    end
                  end
                  local.get 13
                  local.get 14
                  i32.add
                  local.set 13
                end
                local.get 1
                local.get 6
                local.get 13
                i32.add
                i32.const 1
                i32.add
                local.tee 6
                i32.store offset=12
                block  ;; label = @7
                  local.get 6
                  local.get 8
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 5
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 6
                  local.get 8
                  i32.sub
                  local.tee 13
                  i32.add
                  local.get 7
                  local.get 8
                  call 71
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=28
                  local.set 9
                  local.get 1
                  local.get 6
                  i32.store offset=28
                  local.get 3
                  local.get 9
                  i32.add
                  local.set 2
                  local.get 13
                  local.get 9
                  i32.sub
                  local.set 13
                  br 5 (;@2;)
                end
                local.get 4
                local.get 6
                i32.ge_u
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            loop  ;; label = @5
              local.get 3
              local.get 6
              i32.add
              local.set 11
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        local.get 6
                        i32.sub
                        local.tee 12
                        i32.const 8
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 11
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.tee 13
                        local.get 11
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 13
                        local.get 11
                        i32.sub
                        local.set 14
                        i32.const 0
                        local.set 13
                        loop  ;; label = @11
                          local.get 11
                          local.get 13
                          i32.add
                          i32.load8_u
                          local.get 9
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 14
                          local.get 13
                          i32.const 1
                          i32.add
                          local.tee 13
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 14
                        local.get 12
                        i32.const -8
                        i32.add
                        local.tee 15
                        i32.gt_u
                        br_if 3 (;@7;)
                        br 2 (;@8;)
                      end
                      local.get 4
                      local.get 6
                      i32.eq
                      br_if 5 (;@4;)
                      i32.const 0
                      local.set 13
                      loop  ;; label = @10
                        local.get 11
                        local.get 13
                        i32.add
                        i32.load8_u
                        local.get 9
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 12
                        local.get 13
                        i32.const 1
                        i32.add
                        local.tee 13
                        i32.ne
                        br_if 0 (;@10;)
                        br 6 (;@4;)
                      end
                    end
                    local.get 12
                    i32.const -8
                    i32.add
                    local.set 15
                    i32.const 0
                    local.set 14
                  end
                  loop  ;; label = @8
                    i32.const 16843008
                    local.get 11
                    local.get 14
                    i32.add
                    local.tee 13
                    i32.load
                    local.get 10
                    i32.xor
                    local.tee 16
                    i32.sub
                    local.get 16
                    i32.or
                    i32.const 16843008
                    local.get 13
                    i32.const 4
                    i32.add
                    i32.load
                    local.get 10
                    i32.xor
                    local.tee 13
                    i32.sub
                    local.get 13
                    i32.or
                    i32.and
                    i32.const -2139062144
                    i32.and
                    i32.const -2139062144
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 14
                    i32.const 8
                    i32.add
                    local.tee 14
                    local.get 15
                    i32.le_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 14
                local.get 12
                i32.eq
                br_if 2 (;@4;)
                local.get 11
                local.get 14
                i32.add
                local.set 11
                local.get 4
                local.get 14
                i32.sub
                local.get 6
                i32.sub
                local.set 16
                i32.const 0
                local.set 13
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 11
                    local.get 13
                    i32.add
                    i32.load8_u
                    local.get 9
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 16
                    local.get 13
                    i32.const 1
                    i32.add
                    local.tee 13
                    i32.ne
                    br_if 0 (;@8;)
                    br 4 (;@4;)
                  end
                end
                local.get 13
                local.get 14
                i32.add
                local.set 13
              end
              local.get 1
              local.get 6
              local.get 13
              i32.add
              i32.const 1
              i32.add
              local.tee 6
              i32.store offset=12
              block  ;; label = @6
                local.get 6
                local.get 8
                i32.lt_u
                br_if 0 (;@6;)
                local.get 6
                local.get 5
                i32.le_u
                br_if 5 (;@1;)
              end
              local.get 4
              local.get 6
              i32.ge_u
              br_if 0 (;@5;)
              br 2 (;@3;)
            end
          end
          local.get 1
          local.get 4
          i32.store offset=12
        end
        local.get 1
        i32.const 1
        i32.store8 offset=37
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=36
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=32
            local.set 10
            local.get 1
            i32.load offset=28
            local.set 9
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=32
          local.tee 10
          local.get 1
          i32.load offset=28
          local.tee 9
          i32.eq
          br_if 1 (;@2;)
        end
        local.get 3
        local.get 9
        i32.add
        local.set 2
        local.get 10
        local.get 9
        i32.sub
        local.set 13
      end
      local.get 0
      local.get 13
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      return
    end
    local.get 8
    call 3
    unreachable)
  (func (;3;) (type 5) (param i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 4
    i32.store offset=4
    local.get 1
    i32.const 2
    i32.store offset=12
    local.get 1
    i32.const 1049804
    i32.store offset=8
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    local.get 1
    i32.const 1
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 2
    local.get 1
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 1
    local.get 2
    local.get 1
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 8
    i32.add
    i32.const 1048716
    call 21
    unreachable)
  (func (;4;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 1
    i32.load offset=20
    i32.const 1048698
    i32.const 13
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0)
    local.set 0
    local.get 2
    i32.const 0
    i32.store8 offset=13
    local.get 2
    local.get 0
    i32.store8 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1048711
    i32.const 4
    local.get 2
    i32.const 4
    i32.add
    i32.const 2
    call 5
    local.set 3
    local.get 2
    i32.load8_u offset=13
    local.tee 0
    local.get 2
    i32.load8_u offset=12
    local.tee 4
    i32.or
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 4
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        i32.load
        local.tee 1
        i32.load8_u offset=28
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        i32.const 1049467
        i32.const 2
        local.get 1
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=20
      i32.const 1049466
      i32.const 1
      local.get 1
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 0)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 1
    i32.and)
  (func (;5;) (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 8
        i32.load offset=28
        local.tee 9
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=20
        i32.const 1049459
        i32.const 1049456
        local.get 7
        i32.const 1
        i32.and
        local.tee 7
        select
        i32.const 2
        i32.const 3
        local.get 7
        select
        local.get 8
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 8
        i32.load offset=20
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 8
        i32.load offset=20
        i32.const 1049408
        i32.const 2
        local.get 8
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 3
        local.get 8
        local.get 4
        call_indirect (type 1)
        local.set 6
        br 1 (;@1;)
      end
      i32.const 1
      local.set 6
      block  ;; label = @2
        local.get 7
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.load offset=20
        i32.const 1049461
        i32.const 3
        local.get 8
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 8
        i32.load offset=28
        local.set 9
      end
      i32.const 1
      local.set 6
      local.get 5
      i32.const 1
      i32.store8 offset=27
      local.get 5
      local.get 8
      i64.load offset=20 align=4
      i64.store offset=12 align=4
      local.get 5
      i32.const 1049428
      i32.store offset=52
      local.get 5
      local.get 5
      i32.const 27
      i32.add
      i32.store offset=20
      local.get 5
      local.get 8
      i64.load offset=8 align=4
      i64.store offset=36 align=4
      local.get 8
      i64.load align=4
      local.set 10
      local.get 5
      local.get 9
      i32.store offset=56
      local.get 5
      local.get 8
      i32.load offset=16
      i32.store offset=44
      local.get 5
      local.get 8
      i32.load8_u offset=32
      i32.store8 offset=60
      local.get 5
      local.get 10
      i64.store offset=28 align=4
      local.get 5
      local.get 5
      i32.const 12
      i32.add
      i32.store offset=48
      local.get 5
      i32.const 12
      i32.add
      local.get 1
      local.get 2
      call 43
      br_if 0 (;@1;)
      local.get 5
      i32.const 12
      i32.add
      i32.const 1049408
      i32.const 2
      call 43
      br_if 0 (;@1;)
      local.get 3
      local.get 5
      i32.const 28
      i32.add
      local.get 4
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=48
      i32.const 1049464
      i32.const 2
      local.get 5
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 0)
      local.set 6
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 6
    i32.store8 offset=4
    local.get 5
    i32.const 64
    i32.add
    global.set 0
    local.get 0)
  (func (;6;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 138
    i32.add
    i32.const 0
    i32.store align=2
    local.get 2
    i32.const 130
    i32.add
    i64.const 0
    i64.store align=2
    local.get 2
    i32.const 120
    i32.add
    i32.const 0
    i32.load16_u offset=1048736 align=1
    i32.store16
    local.get 2
    i64.const 0
    i64.store offset=122 align=2
    local.get 2
    i32.const 0
    i32.load offset=1048732 align=1
    i32.store offset=116
    local.get 2
    i32.const 1
    i32.store16 offset=72
    local.get 2
    i64.const 21474836480
    i64.store offset=64 align=4
    local.get 2
    i32.const 1
    i32.store8 offset=60
    local.get 2
    i64.const 197568495621
    i64.store offset=52 align=4
    local.get 2
    i64.const 5
    i64.store offset=44 align=4
    local.get 2
    i32.const 1048738
    i32.store offset=40
    local.get 2
    i32.const 46
    i32.store offset=36
    local.get 2
    i32.const 1
    i32.store16 offset=112
    local.get 2
    i64.const 21474836480
    i64.store offset=104 align=4
    local.get 2
    i32.const 1
    i32.store8 offset=100
    local.get 2
    i64.const 197568495621
    i64.store offset=92 align=4
    local.get 2
    i64.const 5
    i64.store offset=84 align=4
    local.get 2
    i32.const 1048738
    i32.store offset=80
    local.get 2
    i32.const 46
    i32.store offset=76
    i32.const -1
    local.set 3
    loop  ;; label = @1
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 2
      i32.const 24
      i32.add
      local.get 2
      i32.const 76
      i32.add
      call 2
      local.get 2
      i32.load offset=24
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.const 3
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 2
                        i32.const 16
                        i32.add
                        local.get 2
                        i32.const 36
                        i32.add
                        call 2
                        local.get 2
                        i32.load offset=16
                        local.tee 3
                        i32.eqz
                        br_if 1 (;@9;)
                        i32.const 0
                        local.set 4
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 2
                            i32.load offset=20
                            local.tee 5
                            br_table 9 (;@3;) 0 (;@12;) 1 (;@11;)
                          end
                          i32.const 1
                          local.set 4
                          local.get 3
                          i32.load8_u
                          i32.const -43
                          i32.add
                          br_table 8 (;@3;) 4 (;@7;) 8 (;@3;) 4 (;@7;)
                        end
                        local.get 3
                        i32.load8_u
                        i32.const 43
                        i32.ne
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const 1
                        i32.add
                        local.set 3
                        local.get 5
                        i32.const 6
                        i32.lt_u
                        local.set 6
                        local.get 5
                        i32.const -1
                        i32.add
                        local.tee 4
                        local.set 5
                        local.get 6
                        br_if 3 (;@7;)
                        br 4 (;@6;)
                      end
                      i32.const 0
                      i32.const 1048908
                      i32.const 36
                      call 0
                      local.get 0
                      i32.const 0
                      i32.store offset=26 align=2
                      local.get 0
                      i32.const 29
                      i32.add
                      i32.const 0
                      i32.store align=1
                      local.get 0
                      i32.const 24
                      i32.add
                      local.get 2
                      i32.const 116
                      i32.add
                      i32.const 24
                      i32.add
                      i32.load16_u
                      i32.store16
                      local.get 0
                      i32.const 16
                      i32.add
                      local.get 2
                      i32.const 116
                      i32.add
                      i32.const 16
                      i32.add
                      i64.load align=4
                      i64.store align=2
                      local.get 0
                      i32.const 8
                      i32.add
                      local.get 2
                      i32.const 116
                      i32.add
                      i32.const 8
                      i32.add
                      i64.load align=4
                      i64.store align=2
                      local.get 0
                      local.get 2
                      i64.load offset=116 align=4
                      i64.store align=2
                      br 8 (;@1;)
                    end
                    i32.const 1048756
                    call 7
                    unreachable
                  end
                  local.get 5
                  local.set 4
                  local.get 5
                  i32.const 5
                  i32.ge_u
                  br_if 1 (;@6;)
                end
                i32.const 0
                local.set 6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load8_u
                    i32.const -48
                    i32.add
                    local.tee 5
                    i32.const 9
                    i32.le_u
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 4
                    br 5 (;@3;)
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 6
                  i32.const 10
                  i32.mul
                  local.get 5
                  i32.add
                  local.set 6
                  local.get 4
                  i32.const -1
                  i32.add
                  local.tee 4
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              i32.const 0
              local.set 6
              loop  ;; label = @6
                local.get 5
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                i32.load8_u
                i32.const -48
                i32.add
                local.tee 4
                i32.const 9
                i32.gt_u
                br_if 2 (;@4;)
                local.get 6
                i32.const 65535
                i32.and
                i32.const 10
                i32.mul
                local.tee 7
                i32.const 16
                i32.shr_u
                i32.const 0
                i32.ne
                br_if 2 (;@4;)
                local.get 7
                local.get 4
                i32.add
                local.set 6
                local.get 3
                i32.const 1
                i32.add
                local.set 3
                local.get 5
                i32.const -1
                i32.add
                local.set 5
                local.get 7
                i32.const 65535
                i32.and
                local.get 4
                i32.const 65535
                i32.and
                i32.add
                local.tee 4
                i32.const 65535
                i32.and
                local.get 4
                i32.eq
                br_if 0 (;@6;)
              end
              i32.const 2
              local.set 4
              br 2 (;@3;)
            end
            local.get 2
            i32.const 8
            i32.add
            local.get 2
            i32.const 36
            i32.add
            call 2
            local.get 2
            i32.load offset=8
            local.tee 3
            br_if 2 (;@2;)
            i32.const 1048772
            call 7
            unreachable
          end
          i32.const 1
          i32.const 2
          local.get 4
          i32.const 9
          i32.gt_u
          select
          local.set 4
        end
        local.get 2
        local.get 4
        i32.store8 offset=76
        i32.const 1048832
        i32.const 28
        local.get 2
        i32.const 76
        i32.add
        i32.const 1048816
        i32.const 1048892
        call 8
        unreachable
      end
      i32.const 0
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.load offset=12
                      local.tee 7
                      br_table 6 (;@3;) 0 (;@9;) 1 (;@8;)
                    end
                    i32.const 1
                    local.set 5
                    local.get 3
                    i32.load8_u
                    i32.const -43
                    i32.add
                    br_table 5 (;@3;) 1 (;@7;) 5 (;@3;) 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 3
                    i32.load8_u
                    i32.const 43
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    local.get 7
                    i32.const 6
                    i32.lt_u
                    local.set 4
                    local.get 7
                    i32.const -1
                    i32.add
                    local.tee 5
                    local.set 7
                    local.get 4
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                  local.get 7
                  local.set 5
                  local.get 7
                  i32.const 5
                  i32.ge_u
                  br_if 1 (;@6;)
                end
                i32.const 0
                local.set 4
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load8_u
                    i32.const -48
                    i32.add
                    local.tee 7
                    i32.const 9
                    i32.le_u
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 5
                    br 5 (;@3;)
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 4
                  i32.const 10
                  i32.mul
                  local.get 7
                  i32.add
                  local.set 4
                  local.get 5
                  i32.const -1
                  i32.add
                  local.tee 5
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                end
              end
              i32.const 0
              local.set 4
              loop  ;; label = @6
                local.get 7
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                i32.load8_u
                i32.const -48
                i32.add
                local.tee 5
                i32.const 9
                i32.gt_u
                br_if 2 (;@4;)
                local.get 4
                i32.const 65535
                i32.and
                i32.const 10
                i32.mul
                local.tee 8
                i32.const 16
                i32.shr_u
                i32.const 0
                i32.ne
                br_if 2 (;@4;)
                local.get 8
                local.get 5
                i32.add
                local.set 4
                local.get 3
                i32.const 1
                i32.add
                local.set 3
                local.get 7
                i32.const -1
                i32.add
                local.set 7
                local.get 8
                i32.const 65535
                i32.and
                local.get 5
                i32.const 65535
                i32.and
                i32.add
                local.tee 5
                i32.const 65535
                i32.and
                local.get 5
                i32.eq
                br_if 0 (;@6;)
              end
              i32.const 2
              local.set 5
              br 2 (;@3;)
            end
            local.get 2
            local.get 2
            i32.const 36
            i32.add
            call 2
            local.get 2
            i32.load
            local.tee 3
            br_if 2 (;@2;)
            i32.const 1048788
            call 7
            unreachable
          end
          i32.const 1
          i32.const 2
          local.get 5
          i32.const 9
          i32.gt_u
          select
          local.set 5
        end
        local.get 2
        local.get 5
        i32.store8 offset=76
        i32.const 1048832
        i32.const 28
        local.get 2
        i32.const 76
        i32.add
        i32.const 1048816
        i32.const 1048876
        call 8
        unreachable
      end
      i32.const 0
      local.set 7
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load offset=4
                    local.tee 8
                    br_table 6 (;@2;) 0 (;@8;) 1 (;@7;)
                  end
                  i32.const 1
                  local.set 7
                  local.get 3
                  i32.load8_u
                  i32.const -43
                  i32.add
                  br_table 5 (;@2;) 1 (;@6;) 5 (;@2;) 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 3
                  i32.load8_u
                  i32.const 43
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 8
                  i32.const 6
                  i32.lt_u
                  local.set 5
                  local.get 8
                  i32.const -1
                  i32.add
                  local.tee 7
                  local.set 8
                  local.get 5
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                local.get 8
                local.set 7
                local.get 8
                i32.const 5
                i32.ge_u
                br_if 1 (;@5;)
              end
              i32.const 0
              local.set 5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load8_u
                  i32.const -48
                  i32.add
                  local.tee 8
                  i32.const 9
                  i32.le_u
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 7
                  br 5 (;@2;)
                end
                local.get 3
                i32.const 1
                i32.add
                local.set 3
                local.get 5
                i32.const 10
                i32.mul
                local.get 8
                i32.add
                local.set 5
                local.get 7
                i32.const -1
                i32.add
                local.tee 7
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            i32.const 0
            local.set 5
            loop  ;; label = @5
              local.get 8
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.load8_u
              i32.const -48
              i32.add
              local.tee 7
              i32.const 9
              i32.gt_u
              br_if 2 (;@3;)
              local.get 5
              i32.const 65535
              i32.and
              i32.const 10
              i32.mul
              local.tee 9
              i32.const 16
              i32.shr_u
              i32.const 0
              i32.ne
              br_if 2 (;@3;)
              local.get 9
              local.get 7
              i32.add
              local.set 5
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 8
              i32.const -1
              i32.add
              local.set 8
              local.get 9
              i32.const 65535
              i32.and
              local.get 7
              i32.const 65535
              i32.and
              i32.add
              local.tee 7
              i32.const 65535
              i32.and
              local.get 7
              i32.eq
              br_if 0 (;@5;)
            end
            i32.const 2
            local.set 7
            br 2 (;@2;)
          end
          i32.const 2
          i32.const 1048804
          i32.const 11
          call 0
          local.get 0
          i32.const 1
          i32.store8 offset=32
          local.get 0
          local.get 5
          i32.store16 offset=30
          local.get 0
          local.get 4
          i32.store16 offset=28
          local.get 0
          local.get 6
          i32.store16 offset=26
          local.get 0
          i32.const 24
          i32.add
          local.get 2
          i32.const 116
          i32.add
          i32.const 24
          i32.add
          i32.load16_u
          i32.store16
          local.get 0
          i32.const 16
          i32.add
          local.get 2
          i32.const 116
          i32.add
          i32.const 16
          i32.add
          i64.load align=4
          i64.store align=2
          local.get 0
          i32.const 8
          i32.add
          local.get 2
          i32.const 116
          i32.add
          i32.const 8
          i32.add
          i64.load align=4
          i64.store align=2
          local.get 0
          local.get 2
          i64.load offset=116 align=4
          i64.store align=2
          br 2 (;@1;)
        end
        i32.const 1
        i32.const 2
        local.get 7
        i32.const 9
        i32.gt_u
        select
        local.set 7
      end
      local.get 2
      local.get 7
      i32.store8 offset=76
      i32.const 1048832
      i32.const 28
      local.get 2
      i32.const 76
      i32.add
      i32.const 1048816
      i32.const 1048860
      call 8
      unreachable
    end
    local.get 2
    i32.const 144
    i32.add
    global.set 0)
  (func (;7;) (type 5) (param i32)
    i32.const 1049228
    i32.const 43
    local.get 0
    call 18
    unreachable)
  (func (;8;) (type 7) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 2
    i32.store offset=28
    local.get 5
    i32.const 1049412
    i32.store offset=24
    local.get 5
    i64.const 2
    i64.store offset=36 align=4
    local.get 5
    i32.const 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 5
    i32.const 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=32
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call 21
    unreachable)
  (func (;9;) (type 3)
    i64.const 40
    call 10
    drop)
  (func (;10;) (type 8) (param i64) (result i64)
    (local i64)
    i64.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i64.const 2
      i64.lt_u
      br_if 0 (;@1;)
      local.get 0
      i64.const 1
      i64.add
      local.set 0
      i64.const 0
      local.set 1
      loop  ;; label = @2
        local.get 0
        i64.const -3
        i64.add
        call 10
        local.get 1
        i64.add
        local.set 1
        local.get 0
        i64.const -1
        i64.add
        local.tee 0
        i64.const 2
        i64.gt_u
        br_if 0 (;@2;)
      end
      i64.const 1
      local.set 0
    end
    local.get 0
    local.get 1
    i64.add)
  (func (;11;) (type 3)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    i32.load8_u offset=1051720
    local.set 1
    i32.const 0
    i32.const 1
    i32.store8 offset=1051720
    local.get 0
    local.get 1
    i32.store8 offset=7
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        i32.const 5
        i32.store offset=1051228
        i32.const 0
        i32.load8_u offset=1051724
        local.set 1
        i32.const 0
        i32.const 1
        i32.store8 offset=1051724
        i32.const 0
        i32.const 0
        i32.store8 offset=1051720
        local.get 0
        local.get 1
        i32.store8 offset=7
        local.get 1
        br_if 1 (;@1;)
        i32.const 0
        i32.const 6
        i32.store offset=1051232
        i32.const 0
        i32.const 0
        i32.store8 offset=1051724
        local.get 0
        i32.const 32
        i32.add
        global.set 0
        return
      end
      local.get 0
      i64.const 0
      i64.store offset=20 align=4
      local.get 0
      i64.const 17179869185
      i64.store offset=12 align=4
      local.get 0
      i32.const 1050852
      i32.store offset=8
      local.get 0
      i32.const 7
      i32.add
      local.get 0
      i32.const 8
      i32.add
      call 12
      unreachable
    end
    local.get 0
    i64.const 0
    i64.store offset=20 align=4
    local.get 0
    i64.const 17179869185
    i64.store offset=12 align=4
    local.get 0
    i32.const 1050852
    i32.store offset=8
    local.get 0
    i32.const 7
    i32.add
    local.get 0
    i32.const 8
    i32.add
    call 12
    unreachable)
  (func (;12;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 1050860
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call 39
    unreachable)
  (func (;13;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const -4
          i32.add
          local.tee 3
          i32.load
          local.tee 4
          i32.const -8
          i32.and
          local.tee 5
          i32.const 4
          i32.const 8
          local.get 4
          i32.const 3
          i32.and
          local.tee 6
          select
          local.get 1
          i32.add
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 1
            i32.const 39
            i32.add
            i32.gt_u
            br_if 2 (;@2;)
          end
          i32.const 0
          local.set 1
          block  ;; label = @4
            local.get 2
            i32.const -65588
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 16
            local.get 2
            i32.const 11
            i32.add
            i32.const -8
            i32.and
            local.get 2
            i32.const 11
            i32.lt_u
            select
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                br_if 0 (;@6;)
                local.get 7
                i32.const 256
                i32.lt_u
                br_if 1 (;@5;)
                local.get 5
                local.get 7
                i32.const 4
                i32.or
                i32.lt_u
                br_if 1 (;@5;)
                local.get 5
                local.get 7
                i32.sub
                i32.const 131073
                i32.ge_u
                br_if 1 (;@5;)
                local.get 0
                return
              end
              local.get 0
              i32.const -8
              i32.add
              local.tee 8
              local.get 5
              i32.add
              local.set 6
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        local.get 7
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 6
                        i32.const 0
                        i32.load offset=1051672
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 6
                        i32.const 0
                        i32.load offset=1051668
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 6
                        i32.load offset=4
                        local.tee 4
                        i32.const 2
                        i32.and
                        br_if 5 (;@5;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.tee 4
                        local.get 5
                        i32.add
                        local.tee 5
                        local.get 7
                        i32.lt_u
                        br_if 5 (;@5;)
                        local.get 6
                        local.get 4
                        call 14
                        local.get 5
                        local.get 7
                        i32.sub
                        local.tee 2
                        i32.const 16
                        i32.lt_u
                        br_if 1 (;@9;)
                        local.get 3
                        local.get 7
                        local.get 3
                        i32.load
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 2
                        i32.or
                        i32.store
                        local.get 8
                        local.get 7
                        i32.add
                        local.tee 1
                        local.get 2
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 8
                        local.get 5
                        i32.add
                        local.tee 5
                        local.get 5
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 2
                        call 15
                        local.get 0
                        return
                      end
                      local.get 5
                      local.get 7
                      i32.sub
                      local.tee 2
                      i32.const 15
                      i32.gt_u
                      br_if 2 (;@7;)
                      local.get 0
                      return
                    end
                    local.get 3
                    local.get 5
                    local.get 3
                    i32.load
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 8
                    local.get 5
                    i32.add
                    local.tee 2
                    local.get 2
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    return
                  end
                  i32.const 0
                  i32.load offset=1051660
                  local.get 5
                  i32.add
                  local.tee 5
                  local.get 7
                  i32.lt_u
                  br_if 2 (;@5;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      local.get 7
                      i32.sub
                      local.tee 2
                      i32.const 15
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 4
                      i32.const 1
                      i32.and
                      local.get 5
                      i32.or
                      i32.const 2
                      i32.or
                      i32.store
                      local.get 8
                      local.get 5
                      i32.add
                      local.tee 2
                      local.get 2
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 0
                      local.set 2
                      i32.const 0
                      local.set 1
                      br 1 (;@8;)
                    end
                    local.get 3
                    local.get 7
                    local.get 4
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 8
                    local.get 7
                    i32.add
                    local.tee 1
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 8
                    local.get 5
                    i32.add
                    local.tee 5
                    local.get 2
                    i32.store
                    local.get 5
                    local.get 5
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                  end
                  i32.const 0
                  local.get 1
                  i32.store offset=1051668
                  i32.const 0
                  local.get 2
                  i32.store offset=1051660
                  local.get 0
                  return
                end
                local.get 3
                local.get 7
                local.get 4
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 8
                local.get 7
                i32.add
                local.tee 5
                local.get 2
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 6
                local.get 6
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 5
                local.get 2
                call 15
                local.get 0
                return
              end
              i32.const 0
              i32.load offset=1051664
              local.get 5
              i32.add
              local.tee 5
              local.get 7
              i32.gt_u
              br_if 4 (;@1;)
            end
            local.get 2
            call 16
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.const -4
            i32.const -8
            local.get 3
            i32.load
            local.tee 1
            i32.const 3
            i32.and
            select
            local.get 1
            i32.const -8
            i32.and
            i32.add
            local.tee 1
            local.get 2
            local.get 1
            local.get 2
            i32.lt_u
            select
            call 73
            local.set 2
            local.get 0
            call 17
            local.get 2
            local.set 1
          end
          local.get 1
          return
        end
        i32.const 1050169
        i32.const 46
        i32.const 1050216
        call 18
        unreachable
      end
      i32.const 1050232
      i32.const 46
      i32.const 1050280
      call 18
      unreachable
    end
    local.get 3
    local.get 7
    local.get 4
    i32.const 1
    i32.and
    i32.or
    i32.const 2
    i32.or
    i32.store
    local.get 8
    local.get 7
    i32.add
    local.tee 2
    local.get 5
    local.get 7
    i32.sub
    local.tee 5
    i32.const 1
    i32.or
    i32.store offset=4
    i32.const 0
    local.get 5
    i32.store offset=1051664
    i32.const 0
    local.get 2
    i32.store offset=1051672
    local.get 0)
  (func (;14;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 256
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=24
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 0
                i32.ne
                br_if 0 (;@6;)
                local.get 0
                i32.const 20
                i32.const 16
                local.get 0
                i32.load offset=20
                local.tee 2
                select
                i32.add
                i32.load
                local.tee 1
                br_if 1 (;@5;)
                i32.const 0
                local.set 2
                br 2 (;@4;)
              end
              local.get 0
              i32.load offset=8
              local.tee 1
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            i32.const 20
            i32.add
            local.get 0
            i32.const 16
            i32.add
            local.get 2
            select
            local.set 4
            loop  ;; label = @5
              local.get 4
              local.set 5
              local.get 1
              local.tee 2
              i32.const 20
              i32.add
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.load offset=20
              local.tee 1
              select
              local.set 4
              local.get 2
              i32.const 20
              i32.const 16
              local.get 1
              select
              i32.add
              i32.load
              local.tee 1
              br_if 0 (;@5;)
            end
            local.get 5
            i32.const 0
            i32.store
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 0
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.const 1051244
            i32.add
            local.tee 1
            i32.load
            local.get 0
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.const 16
            i32.const 20
            local.get 3
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 1
          local.get 2
          i32.store
          local.get 2
          br_if 1 (;@2;)
          i32.const 0
          i32.const 0
          i32.load offset=1051656
          i32.const -2
          local.get 0
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=1051656
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.load offset=8
          local.tee 4
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.get 2
          i32.store offset=12
          local.get 2
          local.get 4
          i32.store offset=8
          return
        end
        i32.const 0
        i32.const 0
        i32.load offset=1051652
        i32.const -2
        local.get 1
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store offset=1051652
        return
      end
      local.get 2
      local.get 3
      i32.store offset=24
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.store offset=16
        local.get 1
        local.get 2
        i32.store offset=24
      end
      local.get 0
      i32.load offset=20
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      i32.store offset=20
      local.get 1
      local.get 2
      i32.store offset=24
      return
    end)
  (func (;15;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          local.get 0
          local.get 3
          i32.sub
          local.tee 0
          i32.const 0
          i32.load offset=1051668
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=1051660
          local.get 2
          local.get 2
          i32.load offset=4
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        call 14
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              local.tee 3
              i32.const 2
              i32.and
              br_if 0 (;@5;)
              local.get 2
              i32.const 0
              i32.load offset=1051672
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 0
              i32.load offset=1051668
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 3
              call 14
              local.get 0
              local.get 3
              local.get 1
              i32.add
              local.tee 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              i32.const 0
              i32.load offset=1051668
              i32.ne
              br_if 1 (;@4;)
              i32.const 0
              local.get 1
              i32.store offset=1051660
              return
            end
            local.get 2
            local.get 3
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
          end
          block  ;; label = @4
            local.get 1
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 31
            local.set 2
            block  ;; label = @5
              local.get 1
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const 6
              local.get 1
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 2
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 2
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 2
            end
            local.get 0
            i64.const 0
            i64.store offset=16 align=4
            local.get 0
            local.get 2
            i32.store offset=28
            local.get 2
            i32.const 2
            i32.shl
            i32.const 1051244
            i32.add
            local.set 3
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051656
              i32.const 1
              local.get 2
              i32.shl
              local.tee 4
              i32.and
              br_if 0 (;@5;)
              local.get 3
              local.get 0
              i32.store
              local.get 0
              local.get 3
              i32.store offset=24
              local.get 0
              local.get 0
              i32.store offset=12
              local.get 0
              local.get 0
              i32.store offset=8
              i32.const 0
              i32.const 0
              i32.load offset=1051656
              local.get 4
              i32.or
              i32.store offset=1051656
              return
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load
                  local.tee 4
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 0
                i32.const 25
                local.get 2
                i32.const 1
                i32.shr_u
                i32.sub
                local.get 2
                i32.const 31
                i32.eq
                select
                i32.shl
                local.set 3
                loop  ;; label = @7
                  local.get 4
                  local.get 3
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  local.tee 5
                  i32.load
                  local.tee 2
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.const 1
                  i32.shl
                  local.set 3
                  local.get 2
                  local.set 4
                  local.get 2
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              i32.load offset=8
              local.tee 1
              local.get 0
              i32.store offset=12
              local.get 2
              local.get 0
              i32.store offset=8
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              local.get 2
              i32.store offset=12
              local.get 0
              local.get 1
              i32.store offset=8
              return
            end
            local.get 5
            local.get 0
            i32.store
            local.get 0
            local.get 4
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1051388
          i32.add
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051652
              local.tee 3
              i32.const 1
              local.get 1
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 1
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 3
              local.get 1
              i32.or
              i32.store offset=1051652
              local.get 2
              local.set 1
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 1
          end
          local.get 2
          local.get 0
          i32.store offset=8
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
          return
        end
        i32.const 0
        local.get 0
        i32.store offset=1051672
        i32.const 0
        i32.const 0
        i32.load offset=1051664
        local.get 1
        i32.add
        local.tee 1
        i32.store offset=1051664
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        i32.const 0
        i32.load offset=1051668
        i32.ne
        br_if 1 (;@1;)
        i32.const 0
        i32.const 0
        i32.store offset=1051660
        i32.const 0
        i32.const 0
        i32.store offset=1051668
        return
      end
      i32.const 0
      local.get 0
      i32.store offset=1051668
      i32.const 0
      i32.const 0
      i32.load offset=1051660
      local.get 1
      i32.add
      local.tee 1
      i32.store offset=1051660
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.store
      return
    end)
  (func (;16;) (type 9) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 244
                    i32.gt_u
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.load offset=1051652
                    local.tee 1
                    i32.const 16
                    local.get 0
                    i32.const 11
                    i32.add
                    i32.const 504
                    i32.and
                    local.get 0
                    i32.const 11
                    i32.lt_u
                    select
                    local.tee 2
                    i32.const 3
                    i32.shr_u
                    local.tee 3
                    i32.shr_u
                    local.tee 0
                    i32.const 3
                    i32.and
                    br_if 1 (;@7;)
                    local.get 2
                    i32.const 0
                    i32.load offset=1051660
                    i32.le_u
                    br_if 7 (;@1;)
                    local.get 0
                    br_if 2 (;@6;)
                    i32.const 0
                    i32.load offset=1051656
                    local.tee 0
                    br_if 3 (;@5;)
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.const 11
                  i32.add
                  local.tee 3
                  i32.const -8
                  i32.and
                  local.set 2
                  i32.const 0
                  i32.load offset=1051656
                  local.tee 4
                  i32.eqz
                  br_if 6 (;@1;)
                  i32.const 31
                  local.set 5
                  block  ;; label = @8
                    local.get 0
                    i32.const 16777204
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 6
                    local.get 3
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 0
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 0
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 5
                  end
                  i32.const 0
                  local.get 2
                  i32.sub
                  local.set 3
                  block  ;; label = @8
                    local.get 5
                    i32.const 2
                    i32.shl
                    i32.const 1051244
                    i32.add
                    i32.load
                    local.tee 1
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 0
                    i32.const 0
                    local.set 6
                    br 4 (;@4;)
                  end
                  i32.const 0
                  local.set 0
                  local.get 2
                  i32.const 0
                  i32.const 25
                  local.get 5
                  i32.const 1
                  i32.shr_u
                  i32.sub
                  local.get 5
                  i32.const 31
                  i32.eq
                  select
                  i32.shl
                  local.set 7
                  i32.const 0
                  local.set 6
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      local.tee 1
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.tee 8
                      local.get 2
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 2
                      i32.sub
                      local.tee 8
                      local.get 3
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 8
                      local.set 3
                      local.get 1
                      local.set 6
                      local.get 8
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 3
                      local.get 1
                      local.set 6
                      local.get 1
                      local.set 0
                      br 6 (;@3;)
                    end
                    local.get 1
                    i32.load offset=20
                    local.tee 8
                    local.get 0
                    local.get 8
                    local.get 1
                    local.get 7
                    i32.const 29
                    i32.shr_u
                    i32.const 4
                    i32.and
                    i32.add
                    i32.const 16
                    i32.add
                    i32.load
                    local.tee 1
                    i32.ne
                    select
                    local.get 0
                    local.get 8
                    select
                    local.set 0
                    local.get 7
                    i32.const 1
                    i32.shl
                    local.set 7
                    local.get 1
                    i32.eqz
                    br_if 4 (;@4;)
                    br 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const -1
                    i32.xor
                    i32.const 1
                    i32.and
                    local.get 3
                    i32.add
                    local.tee 7
                    i32.const 3
                    i32.shl
                    local.tee 0
                    i32.const 1051388
                    i32.add
                    local.tee 2
                    local.get 0
                    i32.const 1051396
                    i32.add
                    i32.load
                    local.tee 3
                    i32.load offset=8
                    local.tee 6
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 6
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 6
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.get 1
                  i32.const -2
                  local.get 7
                  i32.rotl
                  i32.and
                  i32.store offset=1051652
                end
                local.get 3
                local.get 0
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 3
                local.get 0
                i32.add
                local.tee 0
                local.get 0
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                i32.const 8
                i32.add
                return
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  local.get 3
                  i32.shl
                  i32.const 2
                  local.get 3
                  i32.shl
                  local.tee 0
                  i32.const 0
                  local.get 0
                  i32.sub
                  i32.or
                  i32.and
                  i32.ctz
                  local.tee 8
                  i32.const 3
                  i32.shl
                  local.tee 3
                  i32.const 1051388
                  i32.add
                  local.tee 6
                  local.get 3
                  i32.const 1051396
                  i32.add
                  i32.load
                  local.tee 0
                  i32.load offset=8
                  local.tee 7
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 7
                  local.get 6
                  i32.store offset=12
                  local.get 6
                  local.get 7
                  i32.store offset=8
                  br 1 (;@6;)
                end
                i32.const 0
                local.get 1
                i32.const -2
                local.get 8
                i32.rotl
                i32.and
                i32.store offset=1051652
              end
              local.get 0
              local.get 2
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 0
              local.get 2
              i32.add
              local.tee 7
              local.get 3
              local.get 2
              i32.sub
              local.tee 2
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.add
              local.get 2
              i32.store
              block  ;; label = @6
                i32.const 0
                i32.load offset=1051660
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.const -8
                i32.and
                i32.const 1051388
                i32.add
                local.set 6
                i32.const 0
                i32.load offset=1051668
                local.set 3
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1051652
                    local.tee 8
                    i32.const 1
                    local.get 1
                    i32.const 3
                    i32.shr_u
                    i32.shl
                    local.tee 1
                    i32.and
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 8
                    local.get 1
                    i32.or
                    i32.store offset=1051652
                    local.get 6
                    local.set 1
                    br 1 (;@7;)
                  end
                  local.get 6
                  i32.load offset=8
                  local.set 1
                end
                local.get 6
                local.get 3
                i32.store offset=8
                local.get 1
                local.get 3
                i32.store offset=12
                local.get 3
                local.get 6
                i32.store offset=12
                local.get 3
                local.get 1
                i32.store offset=8
              end
              i32.const 0
              local.get 7
              i32.store offset=1051668
              i32.const 0
              local.get 2
              i32.store offset=1051660
              local.get 0
              i32.const 8
              i32.add
              return
            end
            local.get 0
            i32.ctz
            i32.const 2
            i32.shl
            i32.const 1051244
            i32.add
            i32.load
            local.tee 6
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 2
            i32.sub
            local.set 3
            local.get 6
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.load offset=16
                    local.tee 0
                    br_if 0 (;@8;)
                    local.get 6
                    i32.load offset=20
                    local.tee 0
                    br_if 0 (;@8;)
                    local.get 1
                    i32.load offset=24
                    local.set 5
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load offset=12
                          local.tee 0
                          local.get 1
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 1
                          i32.const 20
                          i32.const 16
                          local.get 1
                          i32.load offset=20
                          local.tee 0
                          select
                          i32.add
                          i32.load
                          local.tee 6
                          br_if 1 (;@10;)
                          i32.const 0
                          local.set 0
                          br 2 (;@9;)
                        end
                        local.get 1
                        i32.load offset=8
                        local.tee 6
                        local.get 0
                        i32.store offset=12
                        local.get 0
                        local.get 6
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      local.get 1
                      i32.const 20
                      i32.add
                      local.get 1
                      i32.const 16
                      i32.add
                      local.get 0
                      select
                      local.set 7
                      loop  ;; label = @10
                        local.get 7
                        local.set 8
                        local.get 6
                        local.tee 0
                        i32.const 20
                        i32.add
                        local.get 0
                        i32.const 16
                        i32.add
                        local.get 0
                        i32.load offset=20
                        local.tee 6
                        select
                        local.set 7
                        local.get 0
                        i32.const 20
                        i32.const 16
                        local.get 6
                        select
                        i32.add
                        i32.load
                        local.tee 6
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      i32.const 0
                      i32.store
                    end
                    local.get 5
                    i32.eqz
                    br_if 3 (;@5;)
                    block  ;; label = @9
                      local.get 1
                      i32.load offset=28
                      i32.const 2
                      i32.shl
                      i32.const 1051244
                      i32.add
                      local.tee 6
                      i32.load
                      local.get 1
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 16
                      i32.const 20
                      local.get 5
                      i32.load offset=16
                      local.get 1
                      i32.eq
                      select
                      i32.add
                      local.get 0
                      i32.store
                      local.get 0
                      i32.eqz
                      br_if 4 (;@5;)
                      br 3 (;@6;)
                    end
                    local.get 6
                    local.get 0
                    i32.store
                    local.get 0
                    br_if 2 (;@6;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1051656
                    i32.const -2
                    local.get 1
                    i32.load offset=28
                    i32.rotl
                    i32.and
                    i32.store offset=1051656
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 2
                  i32.sub
                  local.tee 6
                  local.get 3
                  local.get 6
                  local.get 3
                  i32.lt_u
                  local.tee 6
                  select
                  local.set 3
                  local.get 0
                  local.get 1
                  local.get 6
                  select
                  local.set 1
                  local.get 0
                  local.set 6
                  br 0 (;@7;)
                end
              end
              local.get 0
              local.get 5
              i32.store offset=24
              block  ;; label = @6
                local.get 1
                i32.load offset=16
                local.tee 6
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 6
                i32.store offset=16
                local.get 6
                local.get 0
                i32.store offset=24
              end
              local.get 1
              i32.load offset=20
              local.tee 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              local.get 6
              i32.store offset=20
              local.get 6
              local.get 0
              i32.store offset=24
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 16
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 2
                  i32.const 3
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 2
                  i32.add
                  local.tee 2
                  local.get 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 2
                  local.get 3
                  i32.add
                  local.get 3
                  i32.store
                  i32.const 0
                  i32.load offset=1051660
                  local.tee 7
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 7
                  i32.const -8
                  i32.and
                  i32.const 1051388
                  i32.add
                  local.set 6
                  i32.const 0
                  i32.load offset=1051668
                  local.set 0
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1051652
                      local.tee 8
                      i32.const 1
                      local.get 7
                      i32.const 3
                      i32.shr_u
                      i32.shl
                      local.tee 7
                      i32.and
                      br_if 0 (;@9;)
                      i32.const 0
                      local.get 8
                      local.get 7
                      i32.or
                      i32.store offset=1051652
                      local.get 6
                      local.set 7
                      br 1 (;@8;)
                    end
                    local.get 6
                    i32.load offset=8
                    local.set 7
                  end
                  local.get 6
                  local.get 0
                  i32.store offset=8
                  local.get 7
                  local.get 0
                  i32.store offset=12
                  local.get 0
                  local.get 6
                  i32.store offset=12
                  local.get 0
                  local.get 7
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 1
                local.get 3
                local.get 2
                i32.add
                local.tee 0
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 1
                local.get 0
                i32.add
                local.tee 0
                local.get 0
                i32.load offset=4
                i32.const 1
                i32.or
                i32.store offset=4
                br 1 (;@5;)
              end
              i32.const 0
              local.get 2
              i32.store offset=1051668
              i32.const 0
              local.get 3
              i32.store offset=1051660
            end
            local.get 1
            i32.const 8
            i32.add
            return
          end
          block  ;; label = @4
            local.get 0
            local.get 6
            i32.or
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            i32.const 2
            local.get 5
            i32.shl
            local.tee 0
            i32.const 0
            local.get 0
            i32.sub
            i32.or
            local.get 4
            i32.and
            local.tee 0
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.ctz
            i32.const 2
            i32.shl
            i32.const 1051244
            i32.add
            i32.load
            local.set 0
          end
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
        end
        loop  ;; label = @3
          local.get 0
          local.get 6
          local.get 0
          i32.load offset=4
          i32.const -8
          i32.and
          local.tee 1
          local.get 2
          i32.sub
          local.tee 8
          local.get 3
          i32.lt_u
          local.tee 5
          select
          local.set 4
          local.get 1
          local.get 2
          i32.lt_u
          local.set 7
          local.get 8
          local.get 3
          local.get 5
          select
          local.set 8
          block  ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 1
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=20
            local.set 1
          end
          local.get 6
          local.get 4
          local.get 7
          select
          local.set 6
          local.get 3
          local.get 8
          local.get 7
          select
          local.set 3
          local.get 1
          local.set 0
          local.get 1
          br_if 0 (;@3;)
        end
      end
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 0
        i32.load offset=1051660
        local.tee 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        local.get 2
        i32.sub
        i32.ge_u
        br_if 1 (;@1;)
      end
      local.get 6
      i32.load offset=24
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.load offset=12
            local.tee 0
            local.get 6
            i32.ne
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.const 16
            local.get 6
            i32.load offset=20
            local.tee 0
            select
            i32.add
            i32.load
            local.tee 1
            br_if 1 (;@3;)
            i32.const 0
            local.set 0
            br 2 (;@2;)
          end
          local.get 6
          i32.load offset=8
          local.tee 1
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 6
        i32.const 20
        i32.add
        local.get 6
        i32.const 16
        i32.add
        local.get 0
        select
        local.set 7
        loop  ;; label = @3
          local.get 7
          local.set 8
          local.get 1
          local.tee 0
          i32.const 20
          i32.add
          local.get 0
          i32.const 16
          i32.add
          local.get 0
          i32.load offset=20
          local.tee 1
          select
          local.set 7
          local.get 0
          i32.const 20
          i32.const 16
          local.get 1
          select
          i32.add
          i32.load
          local.tee 1
          br_if 0 (;@3;)
        end
        local.get 8
        i32.const 0
        i32.store
      end
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.const 1051244
            i32.add
            local.tee 1
            i32.load
            local.get 6
            i32.eq
            br_if 0 (;@4;)
            local.get 5
            i32.const 16
            i32.const 20
            local.get 5
            i32.load offset=16
            local.get 6
            i32.eq
            select
            i32.add
            local.get 0
            i32.store
            local.get 0
            i32.eqz
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 1
          local.get 0
          i32.store
          local.get 0
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.load offset=1051656
          i32.const -2
          local.get 6
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store offset=1051656
          br 1 (;@2;)
        end
        local.get 0
        local.get 5
        i32.store offset=24
        block  ;; label = @3
          local.get 6
          i32.load offset=16
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 0
          i32.store offset=24
        end
        local.get 6
        i32.load offset=20
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 1
        local.get 0
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 2
          i32.add
          local.tee 2
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 3
          i32.add
          local.get 3
          i32.store
          block  ;; label = @4
            local.get 3
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 31
            local.set 0
            block  ;; label = @5
              local.get 3
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.const 6
              local.get 3
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 0
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 0
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 0
            end
            local.get 2
            i64.const 0
            i64.store offset=16 align=4
            local.get 2
            local.get 0
            i32.store offset=28
            local.get 0
            i32.const 2
            i32.shl
            i32.const 1051244
            i32.add
            local.set 1
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051656
              i32.const 1
              local.get 0
              i32.shl
              local.tee 7
              i32.and
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.store
              local.get 2
              local.get 1
              i32.store offset=24
              local.get 2
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 2
              i32.store offset=8
              i32.const 0
              i32.const 0
              i32.load offset=1051656
              local.get 7
              i32.or
              i32.store offset=1051656
              br 3 (;@2;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load
                  local.tee 7
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 3
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 7
                  local.set 0
                  br 1 (;@6;)
                end
                local.get 3
                i32.const 0
                i32.const 25
                local.get 0
                i32.const 1
                i32.shr_u
                i32.sub
                local.get 0
                i32.const 31
                i32.eq
                select
                i32.shl
                local.set 1
                loop  ;; label = @7
                  local.get 7
                  local.get 1
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  local.tee 8
                  i32.load
                  local.tee 0
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 1
                  i32.const 1
                  i32.shl
                  local.set 1
                  local.get 0
                  local.set 7
                  local.get 0
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 3
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.load offset=8
              local.tee 3
              local.get 2
              i32.store offset=12
              local.get 0
              local.get 2
              i32.store offset=8
              local.get 2
              i32.const 0
              i32.store offset=24
              local.get 2
              local.get 0
              i32.store offset=12
              local.get 2
              local.get 3
              i32.store offset=8
              br 3 (;@2;)
            end
            local.get 8
            local.get 2
            i32.store
            local.get 2
            local.get 7
            i32.store offset=24
            local.get 2
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 2
            i32.store offset=8
            br 2 (;@2;)
          end
          local.get 3
          i32.const 248
          i32.and
          i32.const 1051388
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051652
              local.tee 1
              i32.const 1
              local.get 3
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 3
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 1
              local.get 3
              i32.or
              i32.store offset=1051652
              local.get 0
              local.set 3
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=8
            local.set 3
          end
          local.get 0
          local.get 2
          i32.store offset=8
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 2
          local.get 0
          i32.store offset=12
          local.get 2
          local.get 3
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 6
        local.get 3
        local.get 2
        i32.add
        local.tee 0
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 6
        local.get 0
        i32.add
        local.tee 0
        local.get 0
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get 6
      i32.const 8
      i32.add
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1051660
                  local.tee 0
                  local.get 2
                  i32.ge_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1051664
                    local.tee 0
                    local.get 2
                    i32.gt_u
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 0
                    local.get 2
                    i32.const 65583
                    i32.add
                    local.tee 6
                    i32.const 16
                    i32.shr_u
                    memory.grow
                    local.tee 3
                    i32.const -1
                    i32.eq
                    local.tee 7
                    br_if 7 (;@1;)
                    local.get 3
                    i32.const 16
                    i32.shl
                    local.tee 1
                    i32.eqz
                    br_if 7 (;@1;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1051676
                    i32.const 0
                    local.get 6
                    i32.const -65536
                    i32.and
                    local.get 7
                    select
                    local.tee 8
                    i32.add
                    local.tee 0
                    i32.store offset=1051676
                    i32.const 0
                    i32.const 0
                    i32.load offset=1051680
                    local.tee 3
                    local.get 0
                    local.get 3
                    local.get 0
                    i32.gt_u
                    select
                    i32.store offset=1051680
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051672
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 1051372
                          local.set 0
                          loop  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 6
                            local.get 0
                            i32.load offset=4
                            local.tee 7
                            i32.add
                            local.get 1
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                            br 3 (;@9;)
                          end
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1051688
                            local.tee 0
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 1
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.get 1
                          i32.store offset=1051688
                        end
                        i32.const 0
                        i32.const 4095
                        i32.store offset=1051692
                        i32.const 0
                        local.get 8
                        i32.store offset=1051376
                        i32.const 0
                        local.get 1
                        i32.store offset=1051372
                        i32.const 0
                        i32.const 1051388
                        i32.store offset=1051400
                        i32.const 0
                        i32.const 1051396
                        i32.store offset=1051408
                        i32.const 0
                        i32.const 1051388
                        i32.store offset=1051396
                        i32.const 0
                        i32.const 1051404
                        i32.store offset=1051416
                        i32.const 0
                        i32.const 1051396
                        i32.store offset=1051404
                        i32.const 0
                        i32.const 1051412
                        i32.store offset=1051424
                        i32.const 0
                        i32.const 1051404
                        i32.store offset=1051412
                        i32.const 0
                        i32.const 1051420
                        i32.store offset=1051432
                        i32.const 0
                        i32.const 1051412
                        i32.store offset=1051420
                        i32.const 0
                        i32.const 1051428
                        i32.store offset=1051440
                        i32.const 0
                        i32.const 1051420
                        i32.store offset=1051428
                        i32.const 0
                        i32.const 1051436
                        i32.store offset=1051448
                        i32.const 0
                        i32.const 1051428
                        i32.store offset=1051436
                        i32.const 0
                        i32.const 1051444
                        i32.store offset=1051456
                        i32.const 0
                        i32.const 1051436
                        i32.store offset=1051444
                        i32.const 0
                        i32.const 0
                        i32.store offset=1051384
                        i32.const 0
                        i32.const 1051452
                        i32.store offset=1051464
                        i32.const 0
                        i32.const 1051444
                        i32.store offset=1051452
                        i32.const 0
                        i32.const 1051452
                        i32.store offset=1051460
                        i32.const 0
                        i32.const 1051460
                        i32.store offset=1051472
                        i32.const 0
                        i32.const 1051460
                        i32.store offset=1051468
                        i32.const 0
                        i32.const 1051468
                        i32.store offset=1051480
                        i32.const 0
                        i32.const 1051468
                        i32.store offset=1051476
                        i32.const 0
                        i32.const 1051476
                        i32.store offset=1051488
                        i32.const 0
                        i32.const 1051476
                        i32.store offset=1051484
                        i32.const 0
                        i32.const 1051484
                        i32.store offset=1051496
                        i32.const 0
                        i32.const 1051484
                        i32.store offset=1051492
                        i32.const 0
                        i32.const 1051492
                        i32.store offset=1051504
                        i32.const 0
                        i32.const 1051492
                        i32.store offset=1051500
                        i32.const 0
                        i32.const 1051500
                        i32.store offset=1051512
                        i32.const 0
                        i32.const 1051500
                        i32.store offset=1051508
                        i32.const 0
                        i32.const 1051508
                        i32.store offset=1051520
                        i32.const 0
                        i32.const 1051508
                        i32.store offset=1051516
                        i32.const 0
                        i32.const 1051516
                        i32.store offset=1051528
                        i32.const 0
                        i32.const 1051524
                        i32.store offset=1051536
                        i32.const 0
                        i32.const 1051516
                        i32.store offset=1051524
                        i32.const 0
                        i32.const 1051532
                        i32.store offset=1051544
                        i32.const 0
                        i32.const 1051524
                        i32.store offset=1051532
                        i32.const 0
                        i32.const 1051540
                        i32.store offset=1051552
                        i32.const 0
                        i32.const 1051532
                        i32.store offset=1051540
                        i32.const 0
                        i32.const 1051548
                        i32.store offset=1051560
                        i32.const 0
                        i32.const 1051540
                        i32.store offset=1051548
                        i32.const 0
                        i32.const 1051556
                        i32.store offset=1051568
                        i32.const 0
                        i32.const 1051548
                        i32.store offset=1051556
                        i32.const 0
                        i32.const 1051564
                        i32.store offset=1051576
                        i32.const 0
                        i32.const 1051556
                        i32.store offset=1051564
                        i32.const 0
                        i32.const 1051572
                        i32.store offset=1051584
                        i32.const 0
                        i32.const 1051564
                        i32.store offset=1051572
                        i32.const 0
                        i32.const 1051580
                        i32.store offset=1051592
                        i32.const 0
                        i32.const 1051572
                        i32.store offset=1051580
                        i32.const 0
                        i32.const 1051588
                        i32.store offset=1051600
                        i32.const 0
                        i32.const 1051580
                        i32.store offset=1051588
                        i32.const 0
                        i32.const 1051596
                        i32.store offset=1051608
                        i32.const 0
                        i32.const 1051588
                        i32.store offset=1051596
                        i32.const 0
                        i32.const 1051604
                        i32.store offset=1051616
                        i32.const 0
                        i32.const 1051596
                        i32.store offset=1051604
                        i32.const 0
                        i32.const 1051612
                        i32.store offset=1051624
                        i32.const 0
                        i32.const 1051604
                        i32.store offset=1051612
                        i32.const 0
                        i32.const 1051620
                        i32.store offset=1051632
                        i32.const 0
                        i32.const 1051612
                        i32.store offset=1051620
                        i32.const 0
                        i32.const 1051628
                        i32.store offset=1051640
                        i32.const 0
                        i32.const 1051620
                        i32.store offset=1051628
                        i32.const 0
                        i32.const 1051636
                        i32.store offset=1051648
                        i32.const 0
                        i32.const 1051628
                        i32.store offset=1051636
                        i32.const 0
                        local.get 1
                        i32.store offset=1051672
                        i32.const 0
                        i32.const 1051636
                        i32.store offset=1051644
                        i32.const 0
                        local.get 8
                        i32.const -40
                        i32.add
                        local.tee 0
                        i32.store offset=1051664
                        local.get 1
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 0
                        i32.add
                        i32.const 40
                        i32.store offset=4
                        i32.const 0
                        i32.const 2097152
                        i32.store offset=1051684
                        br 8 (;@2;)
                      end
                      local.get 3
                      local.get 1
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 3
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=12
                      i32.eqz
                      br_if 3 (;@6;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1051688
                    local.tee 0
                    local.get 1
                    local.get 0
                    local.get 1
                    i32.lt_u
                    select
                    i32.store offset=1051688
                    local.get 1
                    local.get 8
                    i32.add
                    local.set 6
                    i32.const 1051372
                    local.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 7
                            local.get 6
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 0
                        i32.load offset=12
                        i32.eqz
                        br_if 1 (;@9;)
                      end
                      i32.const 1051372
                      local.set 0
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 6
                            local.get 3
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.get 6
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 6
                            i32.lt_u
                            br_if 2 (;@10;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                        end
                      end
                      i32.const 0
                      local.get 1
                      i32.store offset=1051672
                      i32.const 0
                      local.get 8
                      i32.const -40
                      i32.add
                      local.tee 0
                      i32.store offset=1051664
                      local.get 1
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 1
                      local.get 0
                      i32.add
                      i32.const 40
                      i32.store offset=4
                      i32.const 0
                      i32.const 2097152
                      i32.store offset=1051684
                      local.get 3
                      local.get 6
                      i32.const -32
                      i32.add
                      i32.const -8
                      i32.and
                      i32.const -8
                      i32.add
                      local.tee 0
                      local.get 0
                      local.get 3
                      i32.const 16
                      i32.add
                      i32.lt_u
                      select
                      local.tee 7
                      i32.const 27
                      i32.store offset=4
                      i32.const 0
                      i64.load offset=1051372 align=4
                      local.set 9
                      local.get 7
                      i32.const 16
                      i32.add
                      i32.const 0
                      i64.load offset=1051380 align=4
                      i64.store align=4
                      local.get 7
                      local.get 9
                      i64.store offset=8 align=4
                      i32.const 0
                      local.get 8
                      i32.store offset=1051376
                      i32.const 0
                      local.get 1
                      i32.store offset=1051372
                      i32.const 0
                      local.get 7
                      i32.const 8
                      i32.add
                      i32.store offset=1051380
                      i32.const 0
                      i32.const 0
                      i32.store offset=1051384
                      local.get 7
                      i32.const 28
                      i32.add
                      local.set 0
                      loop  ;; label = @10
                        local.get 0
                        i32.const 7
                        i32.store
                        local.get 0
                        i32.const 4
                        i32.add
                        local.tee 0
                        local.get 6
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      local.get 7
                      local.get 3
                      i32.eq
                      br_if 7 (;@2;)
                      local.get 7
                      local.get 7
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 3
                      local.get 7
                      local.get 3
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 7
                      local.get 0
                      i32.store
                      block  ;; label = @10
                        local.get 0
                        i32.const 256
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 3
                        local.get 0
                        call 51
                        br 8 (;@2;)
                      end
                      local.get 0
                      i32.const 248
                      i32.and
                      i32.const 1051388
                      i32.add
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051652
                          local.tee 1
                          i32.const 1
                          local.get 0
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 0
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 1
                          local.get 0
                          i32.or
                          i32.store offset=1051652
                          local.get 6
                          local.set 0
                          br 1 (;@10;)
                        end
                        local.get 6
                        i32.load offset=8
                        local.set 0
                      end
                      local.get 6
                      local.get 3
                      i32.store offset=8
                      local.get 0
                      local.get 3
                      i32.store offset=12
                      local.get 3
                      local.get 6
                      i32.store offset=12
                      local.get 3
                      local.get 0
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    local.get 0
                    local.get 1
                    i32.store
                    local.get 0
                    local.get 0
                    i32.load offset=4
                    local.get 8
                    i32.add
                    i32.store offset=4
                    local.get 1
                    local.get 2
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 7
                    i32.const 15
                    i32.add
                    i32.const -8
                    i32.and
                    i32.const -8
                    i32.add
                    local.tee 6
                    local.get 1
                    local.get 2
                    i32.add
                    local.tee 0
                    i32.sub
                    local.set 3
                    local.get 6
                    i32.const 0
                    i32.load offset=1051672
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 6
                    i32.const 0
                    i32.load offset=1051668
                    i32.eq
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 6
                      i32.load offset=4
                      local.tee 2
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 2
                      i32.const -8
                      i32.and
                      local.tee 2
                      call 14
                      local.get 2
                      local.get 3
                      i32.add
                      local.set 3
                      local.get 6
                      local.get 2
                      i32.add
                      local.tee 6
                      i32.load offset=4
                      local.set 2
                    end
                    local.get 6
                    local.get 2
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 0
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 3
                    i32.add
                    local.get 3
                    i32.store
                    block  ;; label = @9
                      local.get 3
                      i32.const 256
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 3
                      call 51
                      br 6 (;@3;)
                    end
                    local.get 3
                    i32.const 248
                    i32.and
                    i32.const 1051388
                    i32.add
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1051652
                        local.tee 6
                        i32.const 1
                        local.get 3
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 3
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 6
                        local.get 3
                        i32.or
                        i32.store offset=1051652
                        local.get 2
                        local.set 3
                        br 1 (;@9;)
                      end
                      local.get 2
                      i32.load offset=8
                      local.set 3
                    end
                    local.get 2
                    local.get 0
                    i32.store offset=8
                    local.get 3
                    local.get 0
                    i32.store offset=12
                    local.get 0
                    local.get 2
                    i32.store offset=12
                    local.get 0
                    local.get 3
                    i32.store offset=8
                    br 5 (;@3;)
                  end
                  i32.const 0
                  local.get 0
                  local.get 2
                  i32.sub
                  local.tee 3
                  i32.store offset=1051664
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051672
                  local.tee 0
                  local.get 2
                  i32.add
                  local.tee 6
                  i32.store offset=1051672
                  local.get 6
                  local.get 3
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 2
                  i32.const 3
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 8
                  i32.add
                  local.set 0
                  br 6 (;@1;)
                end
                i32.const 0
                i32.load offset=1051668
                local.set 3
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    local.get 2
                    i32.sub
                    local.tee 6
                    i32.const 15
                    i32.gt_u
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.store offset=1051668
                    i32.const 0
                    i32.const 0
                    i32.store offset=1051660
                    local.get 3
                    local.get 0
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 3
                    local.get 0
                    i32.add
                    local.tee 0
                    local.get 0
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.get 6
                  i32.store offset=1051660
                  i32.const 0
                  local.get 3
                  local.get 2
                  i32.add
                  local.tee 1
                  i32.store offset=1051668
                  local.get 1
                  local.get 6
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 3
                  local.get 0
                  i32.add
                  local.get 6
                  i32.store
                  local.get 3
                  local.get 2
                  i32.const 3
                  i32.or
                  i32.store offset=4
                end
                local.get 3
                i32.const 8
                i32.add
                return
              end
              local.get 0
              local.get 7
              local.get 8
              i32.add
              i32.store offset=4
              i32.const 0
              i32.const 0
              i32.load offset=1051672
              local.tee 0
              i32.const 15
              i32.add
              i32.const -8
              i32.and
              local.tee 3
              i32.const -8
              i32.add
              local.tee 6
              i32.store offset=1051672
              i32.const 0
              local.get 0
              local.get 3
              i32.sub
              i32.const 0
              i32.load offset=1051664
              local.get 8
              i32.add
              local.tee 3
              i32.add
              i32.const 8
              i32.add
              local.tee 1
              i32.store offset=1051664
              local.get 6
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.add
              i32.const 40
              i32.store offset=4
              i32.const 0
              i32.const 2097152
              i32.store offset=1051684
              br 3 (;@2;)
            end
            i32.const 0
            local.get 0
            i32.store offset=1051672
            i32.const 0
            i32.const 0
            i32.load offset=1051664
            local.get 3
            i32.add
            local.tee 3
            i32.store offset=1051664
            local.get 0
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          i32.const 0
          local.get 0
          i32.store offset=1051668
          i32.const 0
          i32.const 0
          i32.load offset=1051660
          local.get 3
          i32.add
          local.tee 3
          i32.store offset=1051660
          local.get 0
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 3
          i32.store
        end
        local.get 1
        i32.const 8
        i32.add
        return
      end
      i32.const 0
      local.set 0
      i32.const 0
      i32.load offset=1051664
      local.tee 3
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      local.get 3
      local.get 2
      i32.sub
      local.tee 3
      i32.store offset=1051664
      i32.const 0
      i32.const 0
      i32.load offset=1051672
      local.tee 0
      local.get 2
      i32.add
      local.tee 6
      i32.store offset=1051672
      local.get 6
      local.get 3
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      return
    end
    local.get 0)
  (func (;17;) (type 5) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    i32.add
    local.tee 1
    local.get 0
    i32.const -4
    i32.add
    i32.load
    local.tee 2
    i32.const -8
    i32.and
    local.tee 0
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        local.tee 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.sub
          local.tee 1
          i32.const 0
          i32.load offset=1051668
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1051660
          local.get 3
          local.get 3
          i32.load offset=4
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 0
          i32.store
          return
        end
        local.get 1
        local.get 2
        call 14
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.load offset=4
                      local.tee 2
                      i32.const 2
                      i32.and
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 0
                      i32.load offset=1051672
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 3
                      i32.const 0
                      i32.load offset=1051668
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 3
                      local.get 2
                      i32.const -8
                      i32.and
                      local.tee 2
                      call 14
                      local.get 1
                      local.get 2
                      local.get 0
                      i32.add
                      local.tee 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 1
                      local.get 0
                      i32.add
                      local.get 0
                      i32.store
                      local.get 1
                      i32.const 0
                      i32.load offset=1051668
                      i32.ne
                      br_if 1 (;@8;)
                      i32.const 0
                      local.get 0
                      i32.store offset=1051660
                      return
                    end
                    local.get 3
                    local.get 2
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 0
                    i32.add
                    local.get 0
                    i32.store
                  end
                  local.get 0
                  i32.const 256
                  i32.lt_u
                  br_if 2 (;@5;)
                  i32.const 31
                  local.set 3
                  block  ;; label = @8
                    local.get 0
                    i32.const 16777215
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 6
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 3
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 3
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 3
                  end
                  local.get 1
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 1
                  local.get 3
                  i32.store offset=28
                  local.get 3
                  i32.const 2
                  i32.shl
                  i32.const 1051244
                  i32.add
                  local.set 2
                  i32.const 0
                  i32.load offset=1051656
                  i32.const 1
                  local.get 3
                  i32.shl
                  local.tee 4
                  i32.and
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 1
                  i32.store
                  local.get 1
                  local.get 2
                  i32.store offset=24
                  local.get 1
                  local.get 1
                  i32.store offset=12
                  local.get 1
                  local.get 1
                  i32.store offset=8
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051656
                  local.get 4
                  i32.or
                  i32.store offset=1051656
                  br 4 (;@3;)
                end
                i32.const 0
                local.get 1
                i32.store offset=1051672
                i32.const 0
                i32.const 0
                i32.load offset=1051664
                local.get 0
                i32.add
                local.tee 0
                i32.store offset=1051664
                local.get 1
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                block  ;; label = @7
                  local.get 1
                  i32.const 0
                  i32.load offset=1051668
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1051660
                  i32.const 0
                  i32.const 0
                  i32.store offset=1051668
                end
                local.get 0
                i32.const 0
                i32.load offset=1051684
                local.tee 4
                i32.le_u
                br_if 5 (;@1;)
                i32.const 0
                i32.load offset=1051672
                local.tee 0
                i32.eqz
                br_if 5 (;@1;)
                i32.const 0
                local.set 2
                i32.const 0
                i32.load offset=1051664
                local.tee 5
                i32.const 41
                i32.lt_u
                br_if 4 (;@2;)
                i32.const 1051372
                local.set 1
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load
                    local.tee 3
                    local.get 0
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 3
                    local.get 1
                    i32.load offset=4
                    i32.add
                    i32.lt_u
                    br_if 6 (;@2;)
                  end
                  local.get 1
                  i32.load offset=8
                  local.set 1
                  br 0 (;@7;)
                end
              end
              i32.const 0
              local.get 1
              i32.store offset=1051668
              i32.const 0
              i32.const 0
              i32.load offset=1051660
              local.get 0
              i32.add
              local.tee 0
              i32.store offset=1051660
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              return
            end
            local.get 0
            i32.const 248
            i32.and
            i32.const 1051388
            i32.add
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1051652
                local.tee 2
                i32.const 1
                local.get 0
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 0
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 2
                local.get 0
                i32.or
                i32.store offset=1051652
                local.get 3
                local.set 0
                br 1 (;@5;)
              end
              local.get 3
              i32.load offset=8
              local.set 0
            end
            local.get 3
            local.get 1
            i32.store offset=8
            local.get 0
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 3
            i32.store offset=12
            local.get 1
            local.get 0
            i32.store offset=8
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load
                local.tee 4
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 0
                i32.ne
                br_if 0 (;@6;)
                local.get 4
                local.set 3
                br 1 (;@5;)
              end
              local.get 0
              i32.const 0
              i32.const 25
              local.get 3
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 3
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 2
              loop  ;; label = @6
                local.get 4
                local.get 2
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 5
                i32.load
                local.tee 3
                i32.eqz
                br_if 2 (;@4;)
                local.get 2
                i32.const 1
                i32.shl
                local.set 2
                local.get 3
                local.set 4
                local.get 3
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 0
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 3
            i32.load offset=8
            local.tee 0
            local.get 1
            i32.store offset=12
            local.get 3
            local.get 1
            i32.store offset=8
            local.get 1
            i32.const 0
            i32.store offset=24
            local.get 1
            local.get 3
            i32.store offset=12
            local.get 1
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          local.get 1
          i32.store
          local.get 1
          local.get 4
          i32.store offset=24
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
        end
        i32.const 0
        local.set 1
        i32.const 0
        i32.const 0
        i32.load offset=1051692
        i32.const -1
        i32.add
        local.tee 0
        i32.store offset=1051692
        local.get 0
        br_if 1 (;@1;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1051380
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            i32.load offset=8
            local.tee 0
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.get 1
        i32.const 4095
        local.get 1
        i32.const 4095
        i32.gt_u
        select
        i32.store offset=1051692
        return
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=1051380
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 1
          i32.load offset=8
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      local.get 2
      i32.const 4095
      local.get 2
      i32.const 4095
      i32.gt_u
      select
      i32.store offset=1051692
      local.get 5
      local.get 4
      i32.le_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const -1
      i32.store offset=1051684
    end)
  (func (;18;) (type 4) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 1
    i32.store offset=4
    local.get 3
    i64.const 4
    i64.store offset=8 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call 21
    unreachable)
  (func (;19;) (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call 20
    end
    unreachable)
  (func (;20;) (type 3)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 1049036
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049064
    call 21
    unreachable)
  (func (;21;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 1
    i32.store16 offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    local.get 0
    i64.load align=4
    i64.store
    local.get 2
    call 35
    unreachable)
  (func (;22;) (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 19
      unreachable
    end
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 4
      i32.const 1
      i32.shl
      local.tee 1
      local.get 2
      local.get 1
      local.get 2
      i32.gt_u
      select
      local.tee 1
      i32.const 8
      local.get 1
      i32.const 8
      i32.gt_u
      select
      local.tee 1
      i32.const 0
      i32.ge_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 19
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      local.get 4
      i32.store offset=28
      local.get 3
      local.get 0
      i32.load offset=4
      i32.store offset=20
      i32.const 1
      local.set 2
    end
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 3
    i32.const 20
    i32.add
    call 23
    block  ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      call 19
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;23;) (type 4) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 3
            br_if 0 (;@4;)
            i32.const 0
            i32.load8_u offset=1051701
            drop
            br 2 (;@2;)
          end
          local.get 2
          i32.load
          local.get 3
          local.get 1
          call 13
          local.set 2
          br 2 (;@1;)
        end
        i32.const 0
        i32.load8_u offset=1051701
        drop
      end
      local.get 1
      call 16
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 1
    local.get 2
    select
    i32.store offset=4
    local.get 0
    local.get 2
    i32.eqz
    i32.store)
  (func (;24;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=4
                local.tee 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.load
                local.set 4
                local.get 3
                i32.const 3
                i32.and
                local.set 5
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 4
                    i32.ge_u
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 6
                    i32.const 0
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 4
                  i32.const 28
                  i32.add
                  local.set 8
                  i32.const 0
                  local.set 6
                  local.get 3
                  i32.const -4
                  i32.and
                  local.tee 7
                  local.set 3
                  loop  ;; label = @8
                    local.get 8
                    i32.load
                    local.get 8
                    i32.const -8
                    i32.add
                    i32.load
                    local.get 8
                    i32.const -16
                    i32.add
                    i32.load
                    local.get 8
                    i32.const -24
                    i32.add
                    i32.load
                    local.get 6
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    local.set 6
                    local.get 8
                    i32.const 32
                    i32.add
                    local.set 8
                    local.get 3
                    i32.const -4
                    i32.add
                    local.tee 3
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.get 4
                  i32.add
                  i32.const 4
                  i32.add
                  local.set 8
                  loop  ;; label = @8
                    local.get 8
                    i32.load
                    local.get 6
                    i32.add
                    local.set 6
                    local.get 8
                    i32.const 8
                    i32.add
                    local.set 8
                    local.get 5
                    i32.const -1
                    i32.add
                    local.tee 5
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 1
                  i32.load offset=12
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 0
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 6
                  i32.const 16
                  i32.lt_u
                  local.get 4
                  i32.load offset=4
                  i32.eqz
                  i32.and
                  br_if 1 (;@6;)
                  local.get 6
                  i32.const 1
                  i32.shl
                  local.set 6
                end
                local.get 6
                i32.const -1
                i32.le_s
                br_if 3 (;@3;)
                local.get 6
                br_if 1 (;@5;)
              end
              i32.const 1
              local.set 8
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            i32.const 0
            i32.load8_u offset=1051701
            drop
            local.get 6
            call 16
            local.tee 8
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 2
          i32.const 0
          i32.store offset=8
          local.get 2
          local.get 8
          i32.store offset=4
          local.get 2
          local.get 6
          i32.store
          local.get 2
          i32.const 1048992
          local.get 1
          call 25
          i32.eqz
          br_if 2 (;@1;)
          i32.const 1049096
          i32.const 86
          local.get 2
          i32.const 15
          i32.add
          i32.const 1049080
          i32.const 1049200
          call 8
          unreachable
        end
        call 20
      end
      unreachable
    end
    local.get 0
    local.get 2
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;25;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 3
    i32.store8 offset=44
    local.get 3
    i32.const 32
    i32.store offset=28
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=36
    local.get 3
    local.get 0
    i32.store offset=32
    local.get 3
    i32.const 0
    i32.store offset=20
    local.get 3
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=12
              local.tee 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=8
              local.set 1
              local.get 0
              i32.const 3
              i32.shl
              local.set 6
              local.get 0
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 4
              local.get 2
              i32.load
              local.set 0
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=32
                  local.get 0
                  i32.load
                  local.get 7
                  local.get 3
                  i32.load offset=36
                  i32.load offset=12
                  call_indirect (type 0)
                  br_if 4 (;@3;)
                end
                local.get 1
                i32.load
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                i32.load offset=4
                call_indirect (type 1)
                br_if 3 (;@3;)
                local.get 1
                i32.const 8
                i32.add
                local.set 1
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 6
                i32.const -8
                i32.add
                local.tee 6
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 2
            i32.load offset=20
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 5
            i32.shl
            local.set 8
            local.get 1
            i32.const -1
            i32.add
            i32.const 134217727
            i32.and
            i32.const 1
            i32.add
            local.set 4
            local.get 2
            i32.load offset=8
            local.set 9
            local.get 2
            i32.load
            local.set 0
            i32.const 0
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=32
                local.get 0
                i32.load
                local.get 1
                local.get 3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 0)
                br_if 3 (;@3;)
              end
              local.get 3
              local.get 5
              local.get 6
              i32.add
              local.tee 1
              i32.const 16
              i32.add
              i32.load
              i32.store offset=28
              local.get 3
              local.get 1
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=44
              local.get 3
              local.get 1
              i32.const 24
              i32.add
              i32.load
              i32.store offset=40
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.set 7
              i32.const 0
              local.set 10
              i32.const 0
              local.set 11
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 8
                    i32.add
                    i32.load
                    br_table 1 (;@7;) 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.set 12
                  i32.const 0
                  local.set 11
                  local.get 9
                  local.get 12
                  i32.add
                  local.tee 12
                  i32.load offset=4
                  br_if 1 (;@6;)
                  local.get 12
                  i32.load
                  local.set 7
                end
                i32.const 1
                local.set 11
              end
              local.get 3
              local.get 7
              i32.store offset=16
              local.get 3
              local.get 11
              i32.store offset=12
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load
                    br_table 1 (;@7;) 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.set 11
                  local.get 9
                  local.get 11
                  i32.add
                  local.tee 11
                  i32.load offset=4
                  br_if 1 (;@6;)
                  local.get 11
                  i32.load
                  local.set 7
                end
                i32.const 1
                local.set 10
              end
              local.get 3
              local.get 7
              i32.store offset=24
              local.get 3
              local.get 10
              i32.store offset=20
              local.get 9
              local.get 1
              i32.const 20
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 1
              i32.load
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              i32.load offset=4
              call_indirect (type 1)
              br_if 2 (;@3;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 8
              local.get 6
              i32.const 32
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 4
          local.get 2
          i32.load offset=4
          i32.ge_u
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=32
          local.get 2
          i32.load
          local.get 4
          i32.const 3
          i32.shl
          i32.add
          local.tee 1
          i32.load
          local.get 1
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0
    local.get 1)
  (func (;26;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1048984
    i32.const 5
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0))
  (func (;27;) (type 5) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.tee 2
          i32.const -4
          i32.add
          i32.load
          local.tee 0
          i32.const -8
          i32.and
          local.tee 3
          i32.const 4
          i32.const 8
          local.get 0
          i32.const 3
          i32.and
          local.tee 0
          select
          local.get 1
          i32.add
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.const 39
            i32.add
            i32.gt_u
            br_if 3 (;@1;)
          end
          local.get 2
          call 17
        end
        return
      end
      i32.const 1050169
      i32.const 46
      i32.const 1050216
      call 18
      unreachable
    end
    i32.const 1050232
    i32.const 46
    i32.const 1050280
    call 18
    unreachable)
  (func (;28;) (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      call 22
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 0
    i32.load offset=4
    local.get 3
    i32.add
    local.get 1
    local.get 2
    call 73
    drop
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;29;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 1
              i32.const 65536
              i32.ge_u
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 3
              local.set 1
              br 3 (;@2;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 4
            local.set 1
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 0
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            call 30
          end
          local.get 0
          local.get 3
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 0
          i32.load offset=4
          local.get 3
          i32.add
          local.get 1
          i32.store8
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
      end
      block  ;; label = @2
        local.get 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        local.get 1
        call 22
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call 73
      drop
      local.get 0
      local.get 3
      local.get 1
      i32.add
      i32.store offset=8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;30;) (type 5) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 19
      unreachable
    end
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.shl
      local.tee 3
      local.get 2
      i32.const 1
      i32.add
      local.tee 4
      local.get 3
      local.get 4
      i32.gt_u
      select
      local.tee 3
      i32.const 8
      local.get 3
      i32.const 8
      i32.gt_u
      select
      local.tee 3
      i32.const 0
      i32.ge_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 19
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      local.get 0
      i32.load offset=4
      i32.store offset=20
      i32.const 1
      local.set 2
    end
    local.get 1
    local.get 2
    i32.store offset=24
    local.get 1
    i32.const 8
    i32.add
    local.get 3
    local.get 1
    i32.const 20
    i32.add
    call 23
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.get 1
      i32.load offset=16
      call 19
      unreachable
    end
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;31;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1048992
    local.get 1
    call 25)
  (func (;32;) (type 5) (param i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 128
    i32.store offset=4
    local.get 1
    i32.const 2
    i32.store offset=12
    local.get 1
    i32.const 1049772
    i32.store offset=8
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    local.get 1
    i32.const 1
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 2
    local.get 1
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 1
    local.get 2
    local.get 1
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 8
    i32.add
    i32.const 1049492
    call 21
    unreachable)
  (func (;33;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 34)
  (func (;34;) (type 10) (param i64 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    i32.const 39
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 39
      local.set 3
      loop  ;; label = @2
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.add
        local.tee 5
        i32.const -4
        i32.add
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 4
        i64.const 55536
        i64.mul
        local.get 0
        i64.add
        i32.wrap_i64
        local.tee 6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 7
        i32.const 1
        i32.shl
        i32.const 1049510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 5
        i32.const -2
        i32.add
        local.get 7
        i32.const -100
        i32.mul
        local.get 6
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1049510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 5
        local.get 4
        local.set 0
        local.get 5
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i64.const 99
        i64.gt_u
        br_if 0 (;@2;)
        local.get 4
        i32.wrap_i64
        local.set 5
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 4
      i32.wrap_i64
      local.tee 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 5
      i32.const -100
      i32.mul
      local.get 6
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1049510
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -2
        i32.add
        local.tee 3
        i32.add
        local.get 5
        i32.const 1
        i32.shl
        i32.const 1049510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.const 48
      i32.or
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 0
    local.get 2
    i32.const 9
    i32.add
    local.get 3
    i32.add
    i32.const 39
    local.get 3
    i32.sub
    call 36
    local.set 3
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 3)
  (func (;35;) (type 5) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load offset=24
    local.set 2
    local.get 1
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    local.get 0
    i32.store offset=28
    local.get 1
    local.get 2
    i32.store offset=24
    local.get 1
    local.get 0
    i64.load align=4
    i64.store
    local.get 1
    call 52
    unreachable)
  (func (;36;) (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=28
    local.tee 5
    i32.const 1
    i32.and
    local.tee 6
    local.get 4
    i32.add
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 2
          i32.const 3
          i32.and
          local.tee 9
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 0
        local.set 8
        local.get 1
        local.set 10
        loop  ;; label = @3
          local.get 8
          local.get 10
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 10
          i32.const 1
          i32.add
          local.set 10
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 8
      local.get 7
      i32.add
      local.set 7
    end
    i32.const 43
    i32.const 1114112
    local.get 6
    select
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.tee 10
        local.get 0
        i32.load offset=24
        local.tee 8
        local.get 6
        local.get 1
        local.get 2
        call 37
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        return
      end
      local.get 10
      local.get 3
      local.get 4
      local.get 8
      i32.load offset=12
      call_indirect (type 0)
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 10
            local.get 7
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=20
            local.tee 10
            local.get 0
            i32.load offset=24
            local.tee 8
            local.get 6
            local.get 1
            local.get 2
            call 37
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            return
          end
          local.get 5
          i32.const 8
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=16
          local.set 5
          local.get 0
          i32.const 48
          i32.store offset=16
          local.get 0
          i32.load8_u offset=32
          local.set 11
          i32.const 1
          local.set 12
          local.get 0
          i32.const 1
          i32.store8 offset=32
          local.get 0
          i32.load offset=20
          local.tee 8
          local.get 0
          i32.load offset=24
          local.tee 9
          local.get 6
          local.get 1
          local.get 2
          call 37
          br_if 2 (;@1;)
          local.get 10
          local.get 7
          i32.sub
          i32.const 1
          i32.add
          local.set 10
          block  ;; label = @4
            loop  ;; label = @5
              local.get 10
              i32.const -1
              i32.add
              local.tee 10
              i32.eqz
              br_if 1 (;@4;)
              local.get 8
              i32.const 48
              local.get 9
              i32.load offset=16
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 1
            return
          end
          block  ;; label = @4
            local.get 8
            local.get 3
            local.get 4
            local.get 9
            i32.load offset=12
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            return
          end
          local.get 0
          local.get 11
          i32.store8 offset=32
          local.get 0
          local.get 5
          i32.store offset=16
          i32.const 0
          return
        end
        local.get 10
        local.get 3
        local.get 4
        local.get 8
        i32.load offset=12
        call_indirect (type 0)
        local.set 12
        br 1 (;@1;)
      end
      local.get 10
      local.get 7
      i32.sub
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=32
            local.tee 10
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 0 (;@4;) 2 (;@2;)
          end
          local.get 5
          local.set 10
          i32.const 0
          local.set 5
          br 1 (;@2;)
        end
        local.get 5
        i32.const 1
        i32.shr_u
        local.set 10
        local.get 5
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 5
      end
      local.get 10
      i32.const 1
      i32.add
      local.set 10
      local.get 0
      i32.load offset=16
      local.set 7
      local.get 0
      i32.load offset=24
      local.set 8
      local.get 0
      i32.load offset=20
      local.set 9
      block  ;; label = @2
        loop  ;; label = @3
          local.get 10
          i32.const -1
          i32.add
          local.tee 10
          i32.eqz
          br_if 1 (;@2;)
          local.get 9
          local.get 7
          local.get 8
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 12
      local.get 9
      local.get 8
      local.get 6
      local.get 1
      local.get 2
      call 37
      br_if 0 (;@1;)
      local.get 9
      local.get 3
      local.get 4
      local.get 8
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      i32.const 0
      local.set 10
      loop  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.get 10
          i32.ne
          br_if 0 (;@3;)
          local.get 5
          local.get 5
          i32.lt_u
          return
        end
        local.get 10
        i32.const 1
        i32.add
        local.set 10
        local.get 9
        local.get 7
        local.get 8
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 10
      i32.const -1
      i32.add
      local.get 5
      i32.lt_u
      return
    end
    local.get 12)
  (func (;37;) (type 6) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 1)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 0))
  (func (;38;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            local.tee 4
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.add
            local.set 5
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                local.tee 6
                br_if 0 (;@6;)
                i32.const 0
                local.set 7
                local.get 1
                local.set 8
                br 1 (;@5;)
              end
              i32.const 0
              local.set 7
              i32.const 0
              local.set 9
              local.get 1
              local.set 8
              loop  ;; label = @6
                local.get 8
                local.tee 3
                local.get 5
                i32.eq
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load8_s
                    local.tee 8
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 2
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.const -16
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 3
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.const 4
                  i32.add
                  local.set 8
                end
                local.get 8
                local.get 3
                i32.sub
                local.get 7
                i32.add
                local.set 7
                local.get 6
                local.get 9
                i32.const 1
                i32.add
                local.tee 9
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 8
            local.get 5
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 8
              i32.load8_s
              local.tee 3
              i32.const -1
              i32.gt_s
              br_if 0 (;@5;)
              local.get 3
              i32.const -32
              i32.lt_u
              drop
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 7
                  local.get 2
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 7
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 3
                  br 2 (;@5;)
                end
                local.get 7
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              local.get 1
              local.set 3
            end
            local.get 7
            local.get 2
            local.get 3
            select
            local.set 2
            local.get 3
            local.get 1
            local.get 3
            select
            local.set 1
          end
          block  ;; label = @4
            local.get 4
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=20
            local.get 1
            local.get 2
            local.get 0
            i32.load offset=24
            i32.load offset=12
            call_indirect (type 0)
            return
          end
          local.get 0
          i32.load offset=4
          local.set 10
          block  ;; label = @4
            local.get 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            local.get 1
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 7
            i32.sub
            local.tee 9
            i32.add
            local.tee 11
            i32.const 3
            i32.and
            local.set 4
            i32.const 0
            local.set 6
            i32.const 0
            local.set 3
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              block  ;; label = @6
                local.get 9
                i32.const -4
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                i32.const 0
                local.set 5
                loop  ;; label = @7
                  local.get 3
                  local.get 1
                  local.get 5
                  i32.add
                  local.tee 8
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 8
                  i32.const 1
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 8
                  i32.const 2
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 8
                  i32.const 3
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 3
                  local.get 5
                  i32.const 4
                  i32.add
                  local.tee 5
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              local.set 8
              loop  ;; label = @6
                local.get 3
                local.get 8
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.set 3
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                local.get 9
                i32.const 1
                i32.add
                local.tee 9
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              local.get 11
              i32.const -4
              i32.and
              i32.add
              local.tee 8
              i32.load8_s
              i32.const -65
              i32.gt_s
              local.set 6
              local.get 4
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              local.get 6
              local.get 8
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.set 6
              local.get 4
              i32.const 2
              i32.eq
              br_if 0 (;@5;)
              local.get 6
              local.get 8
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.set 6
            end
            local.get 11
            i32.const 2
            i32.shr_u
            local.set 5
            local.get 6
            local.get 3
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 7
              local.set 4
              local.get 5
              i32.eqz
              br_if 4 (;@1;)
              local.get 5
              i32.const 192
              local.get 5
              i32.const 192
              i32.lt_u
              select
              local.tee 11
              i32.const 3
              i32.and
              local.set 12
              local.get 11
              i32.const 2
              i32.shl
              local.set 13
              i32.const 0
              local.set 8
              block  ;; label = @6
                local.get 5
                i32.const 4
                i32.lt_u
                br_if 0 (;@6;)
                local.get 4
                local.get 13
                i32.const 1008
                i32.and
                i32.add
                local.set 9
                i32.const 0
                local.set 8
                local.get 4
                local.set 3
                loop  ;; label = @7
                  local.get 3
                  i32.load offset=12
                  local.tee 7
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 7
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 3
                  i32.load offset=8
                  local.tee 7
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 7
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 3
                  i32.load offset=4
                  local.tee 7
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 7
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 3
                  i32.load
                  local.tee 7
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 7
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 8
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  local.set 8
                  local.get 3
                  i32.const 16
                  i32.add
                  local.tee 3
                  local.get 9
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 5
              local.get 11
              i32.sub
              local.set 5
              local.get 4
              local.get 13
              i32.add
              local.set 7
              local.get 8
              i32.const 8
              i32.shr_u
              i32.const 16711935
              i32.and
              local.get 8
              i32.const 16711935
              i32.and
              i32.add
              i32.const 65537
              i32.mul
              i32.const 16
              i32.shr_u
              local.get 6
              i32.add
              local.set 6
              local.get 12
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 4
            local.get 11
            i32.const 252
            i32.and
            i32.const 2
            i32.shl
            i32.add
            local.tee 8
            i32.load
            local.tee 3
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 3
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.set 3
            local.get 12
            i32.const 1
            i32.eq
            br_if 2 (;@2;)
            local.get 8
            i32.load offset=4
            local.tee 7
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 7
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 3
            i32.add
            local.set 3
            local.get 12
            i32.const 2
            i32.eq
            br_if 2 (;@2;)
            local.get 8
            i32.load offset=8
            local.tee 8
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 8
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 3
            i32.add
            local.set 3
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            br 3 (;@1;)
          end
          local.get 2
          i32.const 3
          i32.and
          local.set 8
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 4
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              i32.const 0
              local.set 3
              br 1 (;@4;)
            end
            local.get 1
            i32.load8_s
            i32.const -65
            i32.gt_s
            local.get 1
            i32.load8_s offset=1
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=2
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=3
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 2
            i32.const 12
            i32.and
            local.tee 3
            i32.const 4
            i32.eq
            br_if 0 (;@4;)
            local.get 6
            local.get 1
            i32.load8_s offset=4
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=5
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=6
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=7
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 3
            i32.const 8
            i32.eq
            br_if 0 (;@4;)
            local.get 6
            local.get 1
            i32.load8_s offset=8
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=9
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=10
            i32.const -65
            i32.gt_s
            i32.add
            local.get 1
            i32.load8_s offset=11
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
          end
          local.get 8
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          local.get 3
          i32.add
          local.set 3
          loop  ;; label = @4
            local.get 6
            local.get 3
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 0
        i32.load offset=20
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        return
      end
      local.get 3
      i32.const 8
      i32.shr_u
      i32.const 459007
      i32.and
      local.get 3
      i32.const 16711935
      i32.and
      i32.add
      i32.const 65537
      i32.mul
      i32.const 16
      i32.shr_u
      local.get 6
      i32.add
      local.set 6
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 10
        local.get 6
        i32.le_u
        br_if 0 (;@2;)
        local.get 10
        local.get 6
        i32.sub
        local.set 5
        i32.const 0
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u offset=32
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;)
            end
            local.get 5
            local.set 3
            i32.const 0
            local.set 5
            br 1 (;@3;)
          end
          local.get 5
          i32.const 1
          i32.shr_u
          local.set 3
          local.get 5
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 5
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        i32.load offset=16
        local.set 9
        local.get 0
        i32.load offset=24
        local.set 8
        local.get 0
        i32.load offset=20
        local.set 7
        loop  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 7
          local.get 9
          local.get 8
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      local.get 0
      i32.load offset=20
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 0)
      return
    end
    block  ;; label = @1
      local.get 7
      local.get 1
      local.get 2
      local.get 8
      i32.load offset=12
      call_indirect (type 0)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    i32.const 0
    local.set 3
    loop  ;; label = @1
      block  ;; label = @2
        local.get 5
        local.get 3
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.lt_u
        return
      end
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 7
      local.get 9
      local.get 8
      i32.load offset=16
      call_indirect (type 1)
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const -1
    i32.add
    local.get 5
    i32.lt_u)
  (func (;39;) (type 4) (param i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 1050972
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 1050972
    i32.store offset=20
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    i32.const 2
    i32.store offset=28
    local.get 3
    i32.const 1049271
    i32.store offset=24
    block  ;; label = @1
      local.get 2
      i32.load
      br_if 0 (;@1;)
      local.get 3
      i32.const 3
      i32.store offset=92
      local.get 3
      i32.const 1049324
      i32.store offset=88
      local.get 3
      i64.const 3
      i64.store offset=100 align=4
      local.get 3
      i32.const 3
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 4
      local.get 3
      i32.const 16
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=72
      local.get 3
      local.get 4
      local.get 3
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=64
      local.get 3
      i32.const 4
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 3
      i32.const 24
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=56
      local.get 3
      local.get 3
      i32.const 56
      i32.add
      i32.store offset=96
      local.get 3
      i32.const 88
      i32.add
      i32.const 1050956
      call 21
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 3
    local.get 2
    i64.load align=4
    i64.store offset=32
    local.get 3
    i32.const 4
    i32.store offset=92
    local.get 3
    i32.const 1049376
    i32.store offset=88
    local.get 3
    i64.const 4
    i64.store offset=100 align=4
    local.get 3
    i32.const 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=80
    local.get 3
    local.get 4
    local.get 3
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=72
    local.get 3
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 3
    i32.const 32
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=64
    local.get 3
    i32.const 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 3
    i32.const 24
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 3
    local.get 3
    i32.const 56
    i32.add
    i32.store offset=96
    local.get 3
    i32.const 88
    i32.add
    i32.const 1050956
    call 21
    unreachable)
  (func (;40;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;41;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 38)
  (func (;42;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    local.get 1
    i32.load offset=24
    local.get 0
    call 25)
  (func (;43;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -1
    i32.add
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    local.get 0
    i32.load offset=8
    local.set 6
    i32.const 0
    local.set 7
    i32.const 0
    local.set 8
    i32.const 0
    local.set 9
    i32.const 0
    local.set 10
    block  ;; label = @1
      loop  ;; label = @2
        local.get 10
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 9
            local.get 2
            i32.gt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              local.get 9
              i32.add
              local.set 10
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      local.get 9
                      i32.sub
                      local.tee 11
                      i32.const 7
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 2
                      local.get 9
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 2
                      local.set 9
                      br 5 (;@4;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 10
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.tee 12
                        local.get 10
                        i32.sub
                        local.tee 13
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 0
                        loop  ;; label = @11
                          local.get 10
                          local.get 0
                          i32.add
                          i32.load8_u
                          i32.const 10
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 13
                          local.get 0
                          i32.const 1
                          i32.add
                          local.tee 0
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 13
                        local.get 11
                        i32.const -8
                        i32.add
                        local.tee 14
                        i32.le_u
                        br_if 1 (;@9;)
                        br 3 (;@7;)
                      end
                      local.get 11
                      i32.const -8
                      i32.add
                      local.set 14
                    end
                    loop  ;; label = @9
                      i32.const 16843008
                      local.get 12
                      i32.load
                      local.tee 0
                      i32.const 168430090
                      i32.xor
                      i32.sub
                      local.get 0
                      i32.or
                      i32.const 16843008
                      local.get 12
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 0
                      i32.const 168430090
                      i32.xor
                      i32.sub
                      local.get 0
                      i32.or
                      i32.and
                      i32.const -2139062144
                      i32.and
                      i32.const -2139062144
                      i32.ne
                      br_if 2 (;@7;)
                      local.get 12
                      i32.const 8
                      i32.add
                      local.set 12
                      local.get 13
                      i32.const 8
                      i32.add
                      local.tee 13
                      local.get 14
                      i32.le_u
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  i32.const 0
                  local.set 0
                  loop  ;; label = @8
                    local.get 10
                    local.get 0
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 11
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.set 9
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  local.get 13
                  local.get 11
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 9
                  br 3 (;@4;)
                end
                local.get 10
                local.get 13
                i32.add
                local.set 12
                local.get 2
                local.get 13
                i32.sub
                local.get 9
                i32.sub
                local.set 11
                i32.const 0
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 12
                    local.get 0
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 11
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.set 9
                  br 3 (;@4;)
                end
                local.get 0
                local.get 13
                i32.add
                local.set 0
              end
              local.get 0
              local.get 9
              i32.add
              local.tee 12
              i32.const 1
              i32.add
              local.set 9
              block  ;; label = @6
                local.get 12
                local.get 2
                i32.ge_u
                br_if 0 (;@6;)
                local.get 10
                local.get 0
                i32.add
                i32.load8_u
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 10
                local.get 9
                local.set 13
                local.get 9
                local.set 0
                br 3 (;@3;)
              end
              local.get 9
              local.get 2
              i32.le_u
              br_if 0 (;@5;)
            end
          end
          local.get 8
          local.get 2
          i32.eq
          br_if 2 (;@1;)
          i32.const 1
          local.set 10
          local.get 8
          local.set 13
          local.get 2
          local.set 0
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 1049452
            i32.const 4
            local.get 4
            i32.load offset=12
            call_indirect (type 0)
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.sub
          local.set 11
          i32.const 0
          local.set 12
          block  ;; label = @4
            local.get 0
            local.get 8
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            local.get 0
            i32.add
            i32.load8_u
            i32.const 10
            i32.eq
            local.set 12
          end
          local.get 1
          local.get 8
          i32.add
          local.set 0
          local.get 6
          local.get 12
          i32.store8
          local.get 13
          local.set 8
          local.get 5
          local.get 0
          local.get 11
          local.get 4
          i32.load offset=12
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 7
    end
    local.get 7)
  (func (;44;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 1049452
      i32.const 4
      local.get 2
      i32.load offset=12
      call_indirect (type 0)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 1
    i32.const 10
    i32.eq
    i32.store8
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=16
    call_indirect (type 1))
  (func (;45;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049428
    local.get 1
    call 25)
  (func (;46;) (type 4) (param i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1049856
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 1
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call 21
    unreachable)
  (func (;47;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load16_u
    local.get 1
    call 34)
  (func (;48;) (type 3)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 30
    i32.store offset=12
    local.get 0
    i32.const 1050296
    i32.store offset=8
    local.get 0
    i32.const 1
    i32.store offset=20
    local.get 0
    i32.const 1049220
    i32.store offset=16
    local.get 0
    i64.const 1
    i64.store offset=28 align=4
    local.get 0
    i32.const 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 0
    local.get 0
    i32.const 40
    i32.add
    i32.store offset=24
    local.get 0
    i32.const 16
    i32.add
    i32.const 1050392
    call 21
    unreachable)
  (func (;49;) (type 3)
    unreachable)
  (func (;50;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;51;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    i32.const 31
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 16777215
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 6
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 2
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.sub
      i32.const 62
      i32.add
      local.set 2
    end
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1051244
    i32.add
    local.set 3
    block  ;; label = @1
      i32.const 0
      i32.load offset=1051656
      i32.const 1
      local.get 2
      i32.shl
      local.tee 4
      i32.and
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store
      local.get 0
      local.get 3
      i32.store offset=24
      local.get 0
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 0
      i32.store offset=8
      i32.const 0
      i32.const 0
      i32.load offset=1051656
      local.get 4
      i32.or
      i32.store offset=1051656
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 3
        loop  ;; label = @3
          local.get 4
          local.get 3
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 5
          i32.load
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 2
          local.set 4
          local.get 2
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=8
      local.tee 3
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
      return
    end
    local.get 5
    local.get 0
    i32.store
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8)
  (func (;52;) (type 5) (param i32)
    local.get 0
    call 53
    unreachable)
  (func (;53;) (type 5) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 2
          br_if 1 (;@2;)
          i32.const 1
          local.set 2
          i32.const 0
          local.set 3
          br 2 (;@1;)
        end
        local.get 2
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.tee 2
        i32.load offset=4
        local.set 3
        local.get 2
        i32.load
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      i32.const -2147483648
      i32.store
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const 8
      local.get 0
      i32.load offset=28
      local.tee 0
      i32.load8_u offset=28
      local.get 0
      i32.load8_u offset=29
      call 54
      unreachable
    end
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store
    local.get 1
    i32.const 9
    local.get 0
    i32.load offset=28
    local.tee 0
    i32.load8_u offset=28
    local.get 0
    i32.load8_u offset=29
    call 54
    unreachable)
  (func (;54;) (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    i32.const 0
    i32.const 0
    i32.load offset=1051240
    local.tee 5
    i32.const 1
    i32.add
    i32.store offset=1051240
    block  ;; label = @1
      local.get 5
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1051700
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.load offset=1051696
          i32.const 1
          i32.add
          i32.store offset=1051696
          i32.const 0
          i32.load offset=1051236
          i32.const -1
          i32.gt_s
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 4
        i32.const 8
        i32.add
        local.get 0
        local.get 1
        call_indirect (type 2)
        unreachable
      end
      i32.const 0
      i32.const 0
      i32.store8 offset=1051700
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      call 49
      unreachable
    end
    unreachable)
  (func (;55;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;56;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.load8_u
    local.set 4
    local.get 0
    i32.const 1
    i32.store8
    local.get 3
    local.get 4
    i32.store8 offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 2
                i32.add
                local.tee 4
                local.get 0
                i32.load offset=8
                i32.ge_u
                br_if 0 (;@6;)
                local.get 1
                i32.const -2
                i32.ge_u
                br_if 3 (;@3;)
                local.get 0
                i32.load offset=4
                local.get 1
                i32.add
                local.get 2
                i32.store16 align=1
                local.get 4
                local.set 1
                br 1 (;@5;)
              end
              local.get 3
              i32.const 2
              i32.store offset=44
              local.get 3
              i32.const 1050548
              i32.store offset=40
              local.get 3
              i64.const 1
              i64.store offset=52 align=4
              local.get 3
              i32.const 3
              i32.store offset=36
              local.get 3
              i32.const 1050496
              i32.store offset=32
              local.get 3
              i32.const 10
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 3
              i32.const 32
              i32.add
              i64.extend_i32_u
              i64.or
              i64.store offset=24
              local.get 3
              local.get 3
              i32.const 24
              i32.add
              i32.store offset=48
              local.get 3
              i32.const 12
              i32.add
              local.get 3
              i32.const 40
              i32.add
              call 24
              i32.const 0
              local.get 3
              i32.load offset=16
              local.tee 4
              local.get 3
              i32.load offset=20
              call 0
              local.get 3
              i32.load offset=12
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.const -4
              i32.add
              i32.load
              local.tee 5
              i32.const -8
              i32.and
              local.tee 6
              i32.const 4
              i32.const 8
              local.get 5
              i32.const 3
              i32.and
              local.tee 5
              select
              local.get 2
              i32.add
              i32.lt_u
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                local.get 2
                i32.const 39
                i32.add
                i32.gt_u
                br_if 5 (;@1;)
              end
              local.get 4
              call 17
            end
            local.get 0
            i32.const 0
            i32.store8
            local.get 3
            i32.const 64
            i32.add
            global.set 0
            local.get 1
            return
          end
          local.get 3
          i64.const 0
          i64.store offset=52 align=4
          local.get 3
          i64.const 17179869185
          i64.store offset=44 align=4
          local.get 3
          i32.const 1050852
          i32.store offset=40
          local.get 3
          i32.const 12
          i32.add
          local.get 3
          i32.const 40
          i32.add
          call 12
          unreachable
        end
        local.get 1
        local.get 4
        i32.const 1050480
        call 46
        unreachable
      end
      i32.const 1050169
      i32.const 46
      i32.const 1050216
      call 18
      unreachable
    end
    i32.const 1050232
    i32.const 46
    i32.const 1050280
    call 18
    unreachable)
  (func (;57;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 38)
  (func (;58;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load8_u
    local.set 3
    local.get 0
    i32.const 1
    i32.store8
    local.get 2
    local.get 3
    i32.store8 offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 2
                i32.add
                local.tee 3
                local.get 0
                i32.load offset=8
                i32.ge_u
                br_if 0 (;@6;)
                local.get 1
                i32.const -2
                i32.ge_u
                br_if 3 (;@3;)
                local.get 0
                i32.load offset=4
                local.get 1
                i32.add
                i32.load16_u align=1
                local.set 3
                br 1 (;@5;)
              end
              local.get 2
              i32.const 2
              i32.store offset=44
              local.get 2
              i32.const 1050632
              i32.store offset=40
              local.get 2
              i64.const 1
              i64.store offset=52 align=4
              local.get 2
              i32.const 3
              i32.store offset=36
              local.get 2
              i32.const 1050496
              i32.store offset=32
              local.get 2
              i32.const 10
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 2
              i32.const 32
              i32.add
              i64.extend_i32_u
              i64.or
              i64.store offset=24
              local.get 2
              local.get 2
              i32.const 24
              i32.add
              i32.store offset=48
              local.get 2
              i32.const 12
              i32.add
              local.get 2
              i32.const 40
              i32.add
              call 24
              i32.const 0
              local.set 3
              i32.const 0
              local.get 2
              i32.load offset=16
              local.tee 1
              local.get 2
              i32.load offset=20
              call 0
              local.get 2
              i32.load offset=12
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const -4
              i32.add
              i32.load
              local.tee 5
              i32.const -8
              i32.and
              local.tee 6
              i32.const 4
              i32.const 8
              local.get 5
              i32.const 3
              i32.and
              local.tee 5
              select
              local.get 4
              i32.add
              i32.lt_u
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                local.get 4
                i32.const 39
                i32.add
                i32.gt_u
                br_if 5 (;@1;)
              end
              local.get 1
              call 17
            end
            local.get 0
            i32.const 0
            i32.store8
            local.get 2
            i32.const 64
            i32.add
            global.set 0
            local.get 3
            return
          end
          local.get 2
          i64.const 0
          i64.store offset=52 align=4
          local.get 2
          i64.const 17179869185
          i64.store offset=44 align=4
          local.get 2
          i32.const 1050852
          i32.store offset=40
          local.get 2
          i32.const 12
          i32.add
          local.get 2
          i32.const 40
          i32.add
          call 12
          unreachable
        end
        local.get 1
        local.get 3
        i32.const 1050568
        call 46
        unreachable
      end
      i32.const 1050169
      i32.const 46
      i32.const 1050216
      call 18
      unreachable
    end
    i32.const 1050232
    i32.const 46
    i32.const 1050280
    call 18
    unreachable)
  (func (;59;) (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 1049710
      i32.const 5
      call 38
      return
    end
    local.get 1
    i32.const 1049715
    i32.const 4
    call 38)
  (func (;60;) (type 5) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load offset=8
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load8_u offset=1051716
                i32.const 3
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                local.get 3
                i32.const -4
                i32.add
                i32.load
                local.tee 0
                i32.const -8
                i32.and
                local.tee 4
                i32.const 4
                i32.const 8
                local.get 0
                i32.const 3
                i32.and
                local.tee 0
                select
                local.get 2
                i32.add
                i32.lt_u
                br_if 2 (;@4;)
                block  ;; label = @7
                  local.get 0
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 2
                  i32.const 39
                  i32.add
                  i32.gt_u
                  br_if 4 (;@3;)
                end
                local.get 3
                call 17
                br 1 (;@5;)
              end
              local.get 0
              i32.load
              local.set 0
              local.get 1
              local.get 2
              i32.store offset=24
              local.get 1
              local.get 3
              i32.store offset=20
              local.get 1
              local.get 0
              i32.store offset=16
              local.get 1
              i32.const 1051704
              i32.store offset=8
              local.get 1
              local.get 1
              i32.const 31
              i32.add
              i32.store offset=12
              local.get 1
              i32.const 8
              i32.add
              call 61
              local.get 1
              i32.load offset=8
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=24
              local.tee 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=20
              local.tee 3
              i32.const -4
              i32.add
              i32.load
              local.tee 2
              i32.const -8
              i32.and
              local.tee 4
              i32.const 4
              i32.const 8
              local.get 2
              i32.const 3
              i32.and
              local.tee 2
              select
              local.get 0
              i32.add
              i32.lt_u
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                local.get 0
                i32.const 39
                i32.add
                i32.gt_u
                br_if 5 (;@1;)
              end
              local.get 3
              call 17
            end
            local.get 1
            i32.const 32
            i32.add
            global.set 0
            return
          end
          i32.const 1050169
          i32.const 46
          i32.const 1050216
          call 18
          unreachable
        end
        i32.const 1050232
        i32.const 46
        i32.const 1050280
        call 18
        unreachable
      end
      i32.const 1050169
      i32.const 46
      i32.const 1050216
      call 18
      unreachable
    end
    i32.const 1050232
    i32.const 46
    i32.const 1050280
    call 18
    unreachable)
  (func (;61;) (type 5) (param i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=1051716
            local.tee 2
            i32.const 2
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const -2
            i32.add
            br_table 3 (;@1;) 1 (;@3;) 3 (;@1;)
          end
          i32.const 0
          i32.const 2
          i32.store8 offset=1051716
          local.get 0
          i32.load
          local.set 2
          local.get 0
          i32.const 0
          i32.store
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i64.load offset=8 align=4
          local.set 3
          local.get 2
          i32.const 8
          i32.add
          local.get 0
          i32.const 16
          i32.add
          i32.load
          i32.store
          local.get 2
          local.get 3
          i64.store align=4
          i32.const 0
          i32.const 3
          i32.store8 offset=1051716
        end
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 1050804
      call 7
      unreachable
    end
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1050704
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 1050788
    call 21
    unreachable)
  (func (;62;) (type 2) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    i32.const 8
    i32.add
    local.tee 3
    i32.const 0
    i32.load8_u offset=1051033
    i32.store8
    local.get 2
    i32.const 17
    i32.add
    i64.const 0
    i64.store align=1
    local.get 2
    i32.const 25
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 0
    i32.store offset=26 align=2
    local.get 0
    i32.const 0
    i64.load offset=1051025 align=1
    local.tee 4
    i64.store align=1
    local.get 0
    i32.const 29
    i32.add
    i32.const 0
    i32.store align=1
    local.get 2
    i64.const 0
    i64.store offset=9 align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i64.load
    i64.store align=1
    local.get 0
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load
    i64.store align=1
    local.get 0
    i32.const 24
    i32.add
    local.get 2
    i32.const 24
    i32.add
    i32.load16_u
    i32.store16 align=1
    local.get 2
    local.get 4
    i64.store)
  (func (;63;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load8_u offset=1051716
                    i32.const 3
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 1051704
                    local.get 0
                    call 58
                    local.tee 3
                    i32.store16 offset=14
                    local.get 3
                    i32.const 65535
                    i32.and
                    i32.const 7
                    i32.ne
                    br_if 1 (;@7;)
                    i32.const 1051704
                    local.get 0
                    i32.const 2
                    i32.add
                    call 58
                    local.set 3
                    i32.const 1051704
                    local.get 0
                    i32.const 4
                    i32.add
                    call 58
                    local.set 4
                    i32.const 1051704
                    local.get 0
                    i32.const 6
                    i32.add
                    call 58
                    local.set 5
                    i32.const 0
                    i32.load8_u offset=1051720
                    local.set 0
                    i32.const 0
                    i32.const 1
                    i32.store8 offset=1051720
                    local.get 2
                    local.get 5
                    i32.store16 offset=22
                    local.get 2
                    local.get 4
                    i32.store16 offset=20
                    local.get 2
                    local.get 3
                    i32.store16 offset=18
                    local.get 2
                    i32.const 7
                    i32.store16 offset=16
                    local.get 2
                    local.get 0
                    i32.store8 offset=72
                    block  ;; label = @9
                      local.get 0
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 24
                      i32.add
                      local.get 2
                      i32.const 16
                      i32.add
                      i32.const 0
                      i32.load offset=1051228
                      call_indirect (type 2)
                      i32.const 0
                      i32.const 0
                      i32.store8 offset=1051720
                      i32.const 0
                      i32.load8_u offset=1051716
                      i32.const 3
                      i32.ne
                      br_if 1 (;@8;)
                      i32.const 0
                      local.set 3
                      block  ;; label = @10
                        local.get 2
                        i32.load8_u offset=24
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=25
                          br_if 0 (;@11;)
                          i32.const 1
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=26
                          br_if 0 (;@11;)
                          i32.const 2
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=27
                          br_if 0 (;@11;)
                          i32.const 3
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=28
                          br_if 0 (;@11;)
                          i32.const 4
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=29
                          br_if 0 (;@11;)
                          i32.const 5
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=30
                          br_if 0 (;@11;)
                          i32.const 6
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=31
                          br_if 0 (;@11;)
                          i32.const 7
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=32
                          br_if 0 (;@11;)
                          i32.const 8
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=33
                          br_if 0 (;@11;)
                          i32.const 9
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=34
                          br_if 0 (;@11;)
                          i32.const 10
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=35
                          br_if 0 (;@11;)
                          i32.const 11
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=36
                          br_if 0 (;@11;)
                          i32.const 12
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=37
                          br_if 0 (;@11;)
                          i32.const 13
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=38
                          br_if 0 (;@11;)
                          i32.const 14
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=39
                          br_if 0 (;@11;)
                          i32.const 15
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=40
                          br_if 0 (;@11;)
                          i32.const 16
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=41
                          br_if 0 (;@11;)
                          i32.const 17
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=42
                          br_if 0 (;@11;)
                          i32.const 18
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=43
                          br_if 0 (;@11;)
                          i32.const 19
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=44
                          br_if 0 (;@11;)
                          i32.const 20
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=45
                          br_if 0 (;@11;)
                          i32.const 21
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=46
                          br_if 0 (;@11;)
                          i32.const 22
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=47
                          br_if 0 (;@11;)
                          i32.const 23
                          local.set 3
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 2
                          i32.load8_u offset=48
                          br_if 0 (;@11;)
                          i32.const 24
                          local.set 3
                          br 1 (;@10;)
                        end
                        i32.const 26
                        i32.const 25
                        local.get 2
                        i32.load8_u offset=49
                        select
                        local.set 3
                      end
                      local.get 3
                      i32.eqz
                      br_if 3 (;@6;)
                      i32.const 0
                      local.get 3
                      i32.const -7
                      i32.add
                      local.tee 0
                      local.get 0
                      local.get 3
                      i32.gt_u
                      select
                      local.set 5
                      local.get 2
                      i32.const 24
                      i32.add
                      i32.const 3
                      i32.add
                      i32.const -4
                      i32.and
                      local.get 2
                      i32.const 24
                      i32.add
                      i32.sub
                      local.set 6
                      i32.const 0
                      local.set 0
                      loop  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 2
                                i32.const 24
                                i32.add
                                local.get 0
                                i32.add
                                i32.load8_u
                                local.tee 4
                                i32.extend8_s
                                local.tee 7
                                i32.const 0
                                i32.lt_s
                                br_if 0 (;@14;)
                                local.get 6
                                local.get 0
                                i32.sub
                                i32.const 3
                                i32.and
                                br_if 1 (;@13;)
                                local.get 0
                                local.get 5
                                i32.ge_u
                                br_if 2 (;@12;)
                                loop  ;; label = @15
                                  local.get 2
                                  i32.const 24
                                  i32.add
                                  local.get 0
                                  i32.add
                                  local.tee 4
                                  i32.load offset=4
                                  local.get 4
                                  i32.load
                                  i32.or
                                  i32.const -2139062144
                                  i32.and
                                  br_if 3 (;@12;)
                                  local.get 0
                                  i32.const 8
                                  i32.add
                                  local.tee 0
                                  local.get 5
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  br 3 (;@12;)
                                end
                              end
                              i32.const 256
                              local.set 8
                              i32.const 1
                              local.set 9
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                local.get 4
                                                                i32.const 1049872
                                                                i32.add
                                                                i32.load8_u
                                                                i32.const -2
                                                                i32.add
                                                                br_table 0 (;@30;) 1 (;@29;) 2 (;@28;) 16 (;@14;)
                                                              end
                                                              local.get 0
                                                              i32.const 1
                                                              i32.add
                                                              local.tee 4
                                                              local.get 3
                                                              i32.lt_u
                                                              br_if 2 (;@27;)
                                                              i32.const 0
                                                              local.set 8
                                                              br 14 (;@15;)
                                                            end
                                                            i32.const 0
                                                            local.set 8
                                                            local.get 0
                                                            i32.const 1
                                                            i32.add
                                                            local.tee 9
                                                            local.get 3
                                                            i32.ge_u
                                                            br_if 13 (;@15;)
                                                            local.get 2
                                                            i32.const 24
                                                            i32.add
                                                            local.get 9
                                                            i32.add
                                                            i32.load8_s
                                                            local.set 9
                                                            local.get 4
                                                            i32.const -224
                                                            i32.add
                                                            br_table 2 (;@26;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 4 (;@24;) 3 (;@25;) 4 (;@24;)
                                                          end
                                                          i32.const 0
                                                          local.set 8
                                                          local.get 0
                                                          i32.const 1
                                                          i32.add
                                                          local.tee 9
                                                          local.get 3
                                                          i32.ge_u
                                                          br_if 12 (;@15;)
                                                          local.get 2
                                                          i32.const 24
                                                          i32.add
                                                          local.get 9
                                                          i32.add
                                                          i32.load8_s
                                                          local.set 9
                                                          local.get 4
                                                          i32.const -240
                                                          i32.add
                                                          br_table 5 (;@22;) 4 (;@23;) 4 (;@23;) 4 (;@23;) 6 (;@21;) 4 (;@23;)
                                                        end
                                                        i32.const 256
                                                        local.set 8
                                                        i32.const 1
                                                        local.set 9
                                                        local.get 2
                                                        i32.const 24
                                                        i32.add
                                                        local.get 4
                                                        i32.add
                                                        i32.load8_s
                                                        i32.const -65
                                                        i32.gt_s
                                                        br_if 12 (;@14;)
                                                        br 10 (;@16;)
                                                      end
                                                      local.get 9
                                                      i32.const -32
                                                      i32.and
                                                      i32.const -96
                                                      i32.eq
                                                      br_if 7 (;@18;)
                                                      br 6 (;@19;)
                                                    end
                                                    local.get 9
                                                    i32.const -97
                                                    i32.gt_s
                                                    br_if 5 (;@19;)
                                                    br 6 (;@18;)
                                                  end
                                                  block  ;; label = @24
                                                    local.get 7
                                                    i32.const 31
                                                    i32.add
                                                    i32.const 255
                                                    i32.and
                                                    i32.const 12
                                                    i32.lt_u
                                                    br_if 0 (;@24;)
                                                    local.get 7
                                                    i32.const -2
                                                    i32.and
                                                    i32.const -18
                                                    i32.ne
                                                    br_if 5 (;@19;)
                                                    local.get 9
                                                    i32.const -64
                                                    i32.lt_s
                                                    br_if 6 (;@18;)
                                                    br 5 (;@19;)
                                                  end
                                                  local.get 9
                                                  i32.const -64
                                                  i32.lt_s
                                                  br_if 5 (;@18;)
                                                  br 4 (;@19;)
                                                end
                                                local.get 7
                                                i32.const 15
                                                i32.add
                                                i32.const 255
                                                i32.and
                                                i32.const 2
                                                i32.gt_u
                                                br_if 3 (;@19;)
                                                local.get 9
                                                i32.const -64
                                                i32.ge_s
                                                br_if 3 (;@19;)
                                                br 2 (;@20;)
                                              end
                                              local.get 9
                                              i32.const 112
                                              i32.add
                                              i32.const 255
                                              i32.and
                                              i32.const 48
                                              i32.ge_u
                                              br_if 2 (;@19;)
                                              br 1 (;@20;)
                                            end
                                            local.get 9
                                            i32.const -113
                                            i32.gt_s
                                            br_if 1 (;@19;)
                                          end
                                          local.get 0
                                          i32.const 2
                                          i32.add
                                          local.tee 4
                                          local.get 3
                                          i32.ge_u
                                          br_if 4 (;@15;)
                                          local.get 2
                                          i32.const 24
                                          i32.add
                                          local.get 4
                                          i32.add
                                          i32.load8_s
                                          i32.const -65
                                          i32.gt_s
                                          br_if 2 (;@17;)
                                          i32.const 0
                                          local.set 9
                                          local.get 0
                                          i32.const 3
                                          i32.add
                                          local.tee 4
                                          local.get 3
                                          i32.ge_u
                                          br_if 5 (;@14;)
                                          local.get 2
                                          i32.const 24
                                          i32.add
                                          local.get 4
                                          i32.add
                                          i32.load8_s
                                          i32.const -65
                                          i32.le_s
                                          br_if 3 (;@16;)
                                          i32.const 768
                                          local.set 8
                                          i32.const 1
                                          local.set 9
                                          br 5 (;@14;)
                                        end
                                        i32.const 256
                                        local.set 8
                                        i32.const 1
                                        local.set 9
                                        br 4 (;@14;)
                                      end
                                      i32.const 0
                                      local.set 9
                                      local.get 0
                                      i32.const 2
                                      i32.add
                                      local.tee 4
                                      local.get 3
                                      i32.ge_u
                                      br_if 3 (;@14;)
                                      local.get 2
                                      i32.const 24
                                      i32.add
                                      local.get 4
                                      i32.add
                                      i32.load8_s
                                      i32.const -65
                                      i32.le_s
                                      br_if 1 (;@16;)
                                    end
                                    i32.const 512
                                    local.set 8
                                    i32.const 1
                                    local.set 9
                                    br 2 (;@14;)
                                  end
                                  local.get 4
                                  i32.const 1
                                  i32.add
                                  local.set 0
                                  br 4 (;@11;)
                                end
                                i32.const 0
                                local.set 9
                              end
                              local.get 2
                              local.get 0
                              i32.store offset=72
                              local.get 2
                              local.get 8
                              local.get 9
                              i32.or
                              i32.store offset=76
                              i32.const 1051112
                              i32.const 25
                              local.get 2
                              i32.const 72
                              i32.add
                              i32.const 1051096
                              i32.const 1051140
                              call 8
                              unreachable
                            end
                            local.get 0
                            i32.const 1
                            i32.add
                            local.set 0
                            br 1 (;@11;)
                          end
                          local.get 0
                          local.get 3
                          i32.ge_u
                          br_if 0 (;@11;)
                          loop  ;; label = @12
                            local.get 2
                            i32.const 24
                            i32.add
                            local.get 0
                            i32.add
                            i32.load8_s
                            i32.const 0
                            i32.lt_s
                            br_if 1 (;@11;)
                            local.get 3
                            local.get 0
                            i32.const 1
                            i32.add
                            local.tee 0
                            i32.ne
                            br_if 0 (;@12;)
                            br 6 (;@6;)
                          end
                        end
                        local.get 0
                        local.get 3
                        i32.lt_u
                        br_if 0 (;@10;)
                        br 4 (;@6;)
                      end
                    end
                    local.get 2
                    i64.const 0
                    i64.store offset=36 align=4
                    local.get 2
                    i64.const 17179869185
                    i64.store offset=28 align=4
                    local.get 2
                    i32.const 1050852
                    i32.store offset=24
                    local.get 2
                    i32.const 72
                    i32.add
                    local.get 2
                    i32.const 24
                    i32.add
                    call 12
                    unreachable
                  end
                  call 48
                  unreachable
                end
                local.get 2
                i32.const 2
                i32.store offset=28
                local.get 2
                i32.const 1051212
                i32.store offset=24
                local.get 2
                i64.const 2
                i64.store offset=36 align=4
                local.get 2
                i32.const 11
                i64.extend_i32_u
                i64.const 32
                i64.shl
                local.tee 10
                i32.const 1051156
                i64.extend_i32_u
                i64.or
                i64.store offset=80
                local.get 2
                local.get 10
                local.get 2
                i32.const 14
                i32.add
                i64.extend_i32_u
                i64.or
                i64.store offset=72
                local.get 2
                local.get 2
                i32.const 72
                i32.add
                i32.store offset=32
                local.get 2
                i32.const 60
                i32.add
                local.get 2
                i32.const 24
                i32.add
                call 24
                i32.const 0
                local.set 0
                i32.const 0
                local.get 2
                i32.load offset=64
                local.tee 3
                local.get 2
                i32.load offset=68
                call 0
                local.get 2
                i32.load offset=60
                local.tee 4
                i32.eqz
                br_if 1 (;@5;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const -4
                    i32.add
                    i32.load
                    local.tee 5
                    i32.const -8
                    i32.and
                    local.tee 7
                    i32.const 4
                    i32.const 8
                    local.get 5
                    i32.const 3
                    i32.and
                    local.tee 5
                    select
                    local.get 4
                    i32.add
                    i32.lt_u
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 5
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 7
                      local.get 4
                      i32.const 39
                      i32.add
                      i32.gt_u
                      br_if 2 (;@7;)
                    end
                    local.get 3
                    call 17
                    br 3 (;@5;)
                  end
                  i32.const 1050169
                  i32.const 46
                  i32.const 1050216
                  call 18
                  unreachable
                end
                i32.const 1050232
                i32.const 46
                i32.const 1050280
                call 18
                unreachable
              end
              i32.const 0
              i32.load8_u offset=1051704
              local.set 0
              i32.const 0
              i32.const 1
              i32.store8 offset=1051704
              local.get 2
              local.get 0
              i32.store8 offset=60
              local.get 0
              i32.const 1
              i32.eq
              br_if 1 (;@4;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  local.get 1
                  i32.add
                  local.tee 0
                  i32.const 0
                  i32.load offset=1051712
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 1
                  i32.lt_u
                  br_if 4 (;@3;)
                  i32.const 0
                  i32.load offset=1051708
                  local.get 1
                  i32.add
                  local.get 2
                  i32.const 24
                  i32.add
                  local.get 3
                  call 73
                  drop
                  br 1 (;@6;)
                end
                i32.const 0
                i32.const 1050424
                i32.const 56
                call 0
                local.get 1
                local.set 0
              end
              i32.const 0
              i32.const 0
              i32.store8 offset=1051704
              block  ;; label = @6
                local.get 0
                local.get 1
                i32.const 26
                i32.add
                local.tee 4
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 10
                i64.extend_i32_u
                i64.const 32
                i64.shl
                local.get 2
                i32.const 104
                i32.add
                i64.extend_i32_u
                i64.or
                local.set 10
                loop  ;; label = @7
                  i32.const 0
                  i32.const 1
                  i32.store8 offset=1051704
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 1
                      i32.add
                      local.tee 3
                      i32.const 0
                      i32.load offset=1051712
                      i32.ge_u
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=1051708
                      local.get 0
                      i32.add
                      i32.const 0
                      i32.store8
                      local.get 3
                      local.set 0
                      br 1 (;@8;)
                    end
                    local.get 2
                    i32.const 2
                    i32.store offset=76
                    local.get 2
                    i32.const 1050548
                    i32.store offset=72
                    local.get 2
                    i64.const 1
                    i64.store offset=84 align=4
                    local.get 2
                    local.get 10
                    i64.store offset=96
                    local.get 2
                    i32.const 2
                    i32.store offset=108
                    local.get 2
                    i32.const 1050564
                    i32.store offset=104
                    local.get 2
                    local.get 2
                    i32.const 96
                    i32.add
                    i32.store offset=80
                    local.get 2
                    i32.const 60
                    i32.add
                    local.get 2
                    i32.const 72
                    i32.add
                    call 24
                    i32.const 0
                    local.get 2
                    i32.load offset=64
                    local.tee 3
                    local.get 2
                    i32.load offset=68
                    call 0
                    local.get 2
                    i32.load offset=60
                    local.tee 5
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const -4
                    i32.add
                    i32.load
                    local.tee 7
                    i32.const -8
                    i32.and
                    local.tee 1
                    i32.const 4
                    i32.const 8
                    local.get 7
                    i32.const 3
                    i32.and
                    local.tee 7
                    select
                    local.get 5
                    i32.add
                    i32.lt_u
                    br_if 6 (;@2;)
                    block  ;; label = @9
                      local.get 7
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 5
                      i32.const 39
                      i32.add
                      i32.gt_u
                      br_if 8 (;@1;)
                    end
                    local.get 3
                    call 17
                  end
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=1051704
                  local.get 0
                  local.get 4
                  i32.lt_u
                  br_if 0 (;@7;)
                end
              end
              i32.const 1051704
              i32.const 1051704
              i32.const 1051704
              local.get 0
              local.get 2
              i32.load16_u offset=50
              call 56
              local.get 2
              i32.load16_u offset=52
              call 56
              local.get 2
              i32.load16_u offset=54
              call 56
              drop
              local.get 2
              i32.load8_u offset=56
              local.set 0
            end
            local.get 2
            i32.const 112
            i32.add
            global.set 0
            local.get 0
            i32.const 1
            i32.and
            return
          end
          local.get 2
          i64.const 0
          i64.store offset=84 align=4
          local.get 2
          i64.const 17179869185
          i64.store offset=76 align=4
          local.get 2
          i32.const 1050852
          i32.store offset=72
          local.get 2
          i32.const 60
          i32.add
          local.get 2
          i32.const 72
          i32.add
          call 12
          unreachable
        end
        local.get 1
        local.get 0
        i32.const 1050408
        call 46
        unreachable
      end
      i32.const 1050169
      i32.const 46
      i32.const 1050216
      call 18
      unreachable
    end
    i32.const 1050232
    i32.const 46
    i32.const 1050280
    call 18
    unreachable)
  (func (;64;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=4
    local.get 1
    i32.load offset=20
    i32.const 1050988
    i32.const 9
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0)
    local.set 3
    local.get 2
    i32.const 0
    i32.store8 offset=13
    local.get 2
    local.get 3
    i32.store8 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1050997
    i32.const 11
    local.get 0
    i32.const 12
    call 5
    i32.const 1051008
    i32.const 9
    local.get 2
    i32.const 4
    i32.add
    i32.const 13
    call 5
    local.set 4
    local.get 2
    i32.load8_u offset=13
    local.tee 0
    local.get 2
    i32.load8_u offset=12
    local.tee 3
    i32.or
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 4
        i32.load
        local.tee 1
        i32.load8_u offset=28
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        i32.const 1049467
        i32.const 2
        local.get 1
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=20
      i32.const 1049466
      i32.const 1
      local.get 1
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 0)
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 1
    i32.and)
  (func (;65;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=28
            local.tee 3
            i32.const 16
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 32
            i32.and
            br_if 1 (;@3;)
            local.get 0
            i64.load32_u
            local.get 1
            call 34
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          i32.load
          local.set 0
          i32.const 127
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 3
            local.tee 4
            i32.add
            local.tee 5
            local.get 0
            i32.const 15
            i32.and
            local.tee 3
            i32.const 48
            i32.or
            local.get 3
            i32.const 87
            i32.add
            local.get 3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 4
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 16
            i32.lt_u
            local.set 6
            local.get 0
            i32.const 4
            i32.shr_u
            local.set 0
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 0
        i32.load
        local.set 0
        i32.const 127
        local.set 3
        loop  ;; label = @3
          local.get 2
          local.get 3
          local.tee 4
          i32.add
          local.tee 5
          local.get 0
          i32.const 15
          i32.and
          local.tee 3
          i32.const 48
          i32.or
          local.get 3
          i32.const 55
          i32.add
          local.get 3
          i32.const 10
          i32.lt_u
          select
          i32.store8
          local.get 4
          i32.const -1
          i32.add
          local.set 3
          local.get 0
          i32.const 16
          i32.lt_u
          local.set 6
          local.get 0
          i32.const 4
          i32.shr_u
          local.set 0
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 129
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          call 32
          unreachable
        end
        local.get 1
        i32.const 1049508
        i32.const 2
        local.get 5
        i32.const 129
        local.get 4
        i32.const 1
        i32.add
        i32.sub
        call 36
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 129
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        call 32
        unreachable
      end
      local.get 1
      i32.const 1049508
      i32.const 2
      local.get 5
      i32.const 129
      local.get 4
      i32.const 1
      i32.add
      i32.sub
      call 36
      local.set 0
    end
    local.get 2
    i32.const 128
    i32.add
    global.set 0
    local.get 0)
  (func (;66;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        i32.load8_u
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        i32.const 1051017
        i32.const 4
        local.get 1
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        local.set 0
        br 1 (;@1;)
      end
      i32.const 1
      local.set 0
      local.get 1
      i32.load offset=20
      local.tee 4
      i32.const 1051021
      i32.const 4
      local.get 1
      i32.load offset=24
      local.tee 5
      i32.load offset=12
      local.tee 6
      call_indirect (type 0)
      br_if 0 (;@1;)
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=28
          local.tee 7
          i32.const 4
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          local.set 0
          local.get 4
          i32.const 1049469
          i32.const 1
          local.get 6
          call_indirect (type 0)
          br_if 2 (;@1;)
          local.get 3
          local.get 1
          call 67
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 4
        i32.const 1049470
        i32.const 2
        local.get 6
        call_indirect (type 0)
        br_if 1 (;@1;)
        i32.const 1
        local.set 0
        local.get 2
        i32.const 1
        i32.store8 offset=27
        local.get 2
        local.get 5
        i32.store offset=16
        local.get 2
        local.get 4
        i32.store offset=12
        local.get 2
        local.get 7
        i32.store offset=56
        local.get 2
        i32.const 1049428
        i32.store offset=52
        local.get 2
        local.get 1
        i32.load8_u offset=32
        i32.store8 offset=60
        local.get 2
        local.get 1
        i32.load offset=16
        i32.store offset=44
        local.get 2
        local.get 1
        i64.load offset=8 align=4
        i64.store offset=36 align=4
        local.get 2
        local.get 1
        i64.load align=4
        i64.store offset=28 align=4
        local.get 2
        local.get 2
        i32.const 27
        i32.add
        i32.store offset=20
        local.get 2
        local.get 2
        i32.const 12
        i32.add
        i32.store offset=48
        local.get 3
        local.get 2
        i32.const 28
        i32.add
        call 67
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=48
        i32.const 1049464
        i32.const 2
        local.get 2
        i32.load offset=52
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load offset=20
      i32.const 1049216
      i32.const 1
      local.get 1
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 0)
      local.set 0
    end
    local.get 2
    i32.const 64
    i32.add
    global.set 0
    local.get 0)
  (func (;67;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=28
            local.tee 3
            i32.const 16
            i32.and
            br_if 0 (;@4;)
            local.get 3
            i32.const 32
            i32.and
            br_if 1 (;@3;)
            local.get 0
            i64.load8_u
            local.get 1
            call 34
            local.set 0
            br 3 (;@1;)
          end
          local.get 0
          i32.load8_u
          local.set 0
          i32.const 127
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 3
            local.tee 4
            i32.add
            local.tee 5
            local.get 0
            i32.const 15
            i32.and
            local.tee 3
            i32.const 48
            i32.or
            local.get 3
            i32.const 87
            i32.add
            local.get 3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 4
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 255
            i32.and
            local.tee 6
            i32.const 4
            i32.shr_u
            local.set 0
            local.get 6
            i32.const 16
            i32.ge_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 0
        i32.load8_u
        local.set 0
        i32.const 127
        local.set 3
        loop  ;; label = @3
          local.get 2
          local.get 3
          local.tee 4
          i32.add
          local.tee 5
          local.get 0
          i32.const 15
          i32.and
          local.tee 3
          i32.const 48
          i32.or
          local.get 3
          i32.const 55
          i32.add
          local.get 3
          i32.const 10
          i32.lt_u
          select
          i32.store8
          local.get 4
          i32.const -1
          i32.add
          local.set 3
          local.get 0
          i32.const 255
          i32.and
          local.tee 6
          i32.const 4
          i32.shr_u
          local.set 0
          local.get 6
          i32.const 16
          i32.ge_u
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 4
          i32.const 129
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          call 32
          unreachable
        end
        local.get 1
        i32.const 1049508
        i32.const 2
        local.get 5
        i32.const 129
        local.get 4
        i32.const 1
        i32.add
        i32.sub
        call 36
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 129
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        call 32
        unreachable
      end
      local.get 1
      i32.const 1049508
      i32.const 2
      local.get 5
      i32.const 129
      local.get 4
      i32.const 1
      i32.add
      i32.sub
      call 36
      local.set 0
    end
    local.get 2
    i32.const 128
    i32.add
    global.set 0
    local.get 0)
  (func (;68;) (type 9) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const -1
              i32.le_s
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.eqz
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 0
                        call 16
                        local.tee 2
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 2
                          i32.const -4
                          i32.add
                          i32.load8_u
                          i32.const 3
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 0
                          local.get 0
                          call 72
                          drop
                        end
                        i32.const 0
                        i32.load8_u offset=1051716
                        i32.const 3
                        i32.ne
                        br_if 2 (;@8;)
                        local.get 2
                        i32.const -4
                        i32.add
                        i32.load
                        local.tee 3
                        i32.const -8
                        i32.and
                        local.tee 4
                        i32.const 4
                        i32.const 8
                        local.get 3
                        i32.const 3
                        i32.and
                        local.tee 3
                        select
                        local.get 0
                        i32.add
                        i32.lt_u
                        br_if 6 (;@4;)
                        block  ;; label = @11
                          local.get 3
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 0
                          i32.const 39
                          i32.add
                          i32.gt_u
                          br_if 8 (;@3;)
                        end
                        local.get 2
                        call 17
                        br 3 (;@7;)
                      end
                      unreachable
                    end
                    i32.const 0
                    i32.load8_u offset=1051716
                    i32.const 3
                    i32.eq
                    br_if 2 (;@6;)
                    i32.const 1
                    local.set 2
                  end
                  local.get 1
                  local.get 0
                  i32.store offset=16
                  local.get 1
                  local.get 2
                  i32.store offset=12
                  local.get 1
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.const -256
                  i32.and
                  i32.store offset=8
                  local.get 1
                  i32.const 8
                  i32.add
                  call 60
                end
                i32.const 0
                i32.load8_u offset=1051716
                i32.const 3
                i32.ne
                br_if 4 (;@2;)
              end
              i32.const 0
              i32.load8_u offset=1051704
              local.set 0
              i32.const 0
              i32.const 1
              i32.store8 offset=1051704
              local.get 1
              local.get 0
              i32.store8 offset=4
              local.get 0
              i32.const 1
              i32.eq
              br_if 4 (;@1;)
              i32.const 0
              i32.const 0
              i32.store8 offset=1051704
              i32.const 0
              i32.load offset=1051708
              local.set 0
              local.get 1
              i32.const 32
              i32.add
              global.set 0
              local.get 0
              return
            end
            call 20
            unreachable
          end
          i32.const 1050169
          i32.const 46
          i32.const 1050216
          call 18
          unreachable
        end
        i32.const 1050232
        i32.const 46
        i32.const 1050280
        call 18
        unreachable
      end
      call 48
      unreachable
    end
    local.get 1
    i64.const 0
    i64.store offset=20 align=4
    local.get 1
    i64.const 17179869185
    i64.store offset=12 align=4
    local.get 1
    i32.const 1050852
    i32.store offset=8
    local.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.const 8
    i32.add
    call 12
    unreachable)
  (func (;69;) (type 3))
  (func (;70;) (type 5) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    i32.const 0
    i32.load8_u offset=1051724
    local.set 2
    i32.const 0
    i32.const 1
    i32.store8 offset=1051724
    local.get 1
    local.get 2
    i32.store8 offset=7
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i64.const 0
      i64.store offset=20 align=4
      local.get 1
      i64.const 17179869185
      i64.store offset=12 align=4
      local.get 1
      i32.const 1050852
      i32.store offset=8
      local.get 1
      i32.const 7
      i32.add
      local.get 1
      i32.const 8
      i32.add
      call 12
      unreachable
    end
    i32.const 0
    i32.load offset=1051232
    call_indirect (type 3)
    i32.const 0
    i32.const 0
    i32.store8 offset=1051724
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;71;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (func (;72;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 4
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 2
        loop  ;; label = @3
          local.get 5
          local.get 2
          i32.store
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.const 3
      i32.and
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;73;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          i32.const 3
          i32.shl
          local.tee 6
          i32.const 24
          i32.and
          local.set 2
          local.get 9
          i32.const -4
          i32.and
          local.tee 10
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 6
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 10
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 2
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 9
      local.get 8
      i32.add
      local.set 1
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 27 27 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1051725))
  (global (;2;) i32 (i32.const 1051728))
  (export "memory" (memory 0))
  (export "clientInitialize" (func 11))
  (export "receiveGameParams" (func 63))
  (export "setup" (func 68))
  (export "tick" (func 70))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 33 1 40 41 6 9 42 50 55 57 47 65 66 4 27 28 29 31 26 43 44 45 59 62 64 69)
  (data (;0;) (i32.const 1048576) "/rustc/f6e511eec7342f59a25f7c0534f1dbea00d01b14/library/core/src/str/pattern.rsEmptyInvalidDigitPosOverflowNegOverflowZeroParseIntErrorkind\00\00\00\10\00O\00\00\00\be\01\00\007\00\00\00bot_rs0.1.0src/lib.rs\00\00\00\a7\00\10\00\0a\00\00\00\12\00\00\00\0a\00\00\00\a7\00\10\00\0a\00\00\00\17\00\00\00\0a\00\00\00\a7\00\10\00\0a\00\00\00\1c\00\00\00\0a\00\00\00Good to go!\00\00\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00Semver parts must fit in u16\a7\00\10\00\0a\00\00\00\1e\00\00\00\0a\00\00\00\a7\00\10\00\0a\00\00\00\19\00\00\00\0a\00\00\00\a7\00\10\00\0a\00\00\00\14\00\00\00\0a\00\00\00CLIENT ERROR: version must be semver\05\00\00\00\0c\00\00\00\0b\00\00\00\0b\00\00\00\04\00\00\00O\00\10\00T\00\10\00`\00\10\00k\00\10\00v\00\10\00Error\00\00\00\0f\00\00\00\0c\00\00\00\04\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00capacity overflow\00\00\00\b8\01\10\00\11\00\00\00alloc/src/raw_vec.rs\d4\01\10\00\14\00\00\00\18\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\13\00\00\00a formatting trait implementation returned an error when the underlying stream did notalloc/src/fmt.rs\00\00^\02\10\00\10\00\00\00~\02\00\00\0e\00\00\00)\00\00\00\01\00\00\00\00\00\00\00called `Option::unwrap()` on a `None` value==assertion `left  right` failed\0a  left: \0a right: \00\00\00\b9\02\10\00\10\00\00\00\c9\02\10\00\17\00\00\00\e0\02\10\00\09\00\00\00 right` failed: \0a  left: \00\00\00\b9\02\10\00\10\00\00\00\04\03\10\00\10\00\00\00\14\03\10\00\09\00\00\00\e0\02\10\00\09\00\00\00: \00\00\01\00\00\00\00\00\00\00@\03\10\00\02\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00     { ,  {\0a,\0a} }((\0acore/src/fmt/num.rs\00\80\03\10\00\13\00\00\00f\00\00\00\17\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899falsetruerange start index  out of range for slice of length \00w\04\10\00\12\00\00\00\89\04\10\00\22\00\00\00range end index \bc\04\10\00\10\00\00\00\89\04\10\00\22\00\00\00slice index starts at  but ends at \00\dc\04\10\00\16\00\00\00\f2\04\10\00\0d\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\10\06\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\10\06\10\00)\00\00\00\ae\04\00\00\0d\00\00\00Reserve memory not initialized/Users/shane/Projects/wasmbots/libraries/Rust/src/host_reserve.rs\00\d6\06\10\00A\00\00\00B\00\00\00&\00\00\00\d6\06\10\00A\00\00\00W\00\00\00\0e\00\00\00CLIENT ERROR: String too long to write to reserve memory\d6\06\10\00A\00\00\00i\00\00\00\0e\00\00\00u16CLIENT ERROR: Writing  outside of reserve memory\00\83\07\10\00\16\00\00\00\99\07\10\00\1a\00\00\00u8\00\00\d6\06\10\00A\00\00\00\89\00\00\00.\00\00\00CLIENT ERROR:  read will overrun reserve memory\00\d8\07\10\00\0e\00\00\00\e6\07\10\00!\00\00\00one-time initialization may not be performed recursively\18\08\10\008\00\00\00/rustc/f6e511eec7342f59a25f7c0534f1dbea00d01b14/library/std/src/sync/once.rsX\08\10\00L\00\00\00\d9\00\00\00\14\00\00\00X\08\10\00L\00\00\00\d9\00\00\001\00\00\00cannot recursively acquire mutex\c4\08\10\00 \00\00\00\00/rustc/f6e511eec7342f59a25f7c0534f1dbea00d01b14/library/std/src/sys/sync/mutex/no_threads.rs\00\00\00\ed\08\10\00\5c\00\00\00\14\00\00\00\09\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\17\00\00\00Utf8Errorvalid_up_toerror_lenNoneSome[INVALID]/Users/shane/Projects/wasmbots/libraries/Rust/src/params.rs\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\19\00\00\00Invalid UTF-8 in bot name\00\00\00\9a\09\10\00;\00\00\00N\00\00\00:\00\00\00\07\00ERROR: Can't parse GameParams v; only prepared for v\00\00\16\0a\10\00\1f\00\00\005\0a\10\00\15\00\00\00")
  (data (;1;) (i32.const 1051228) "\18\00\00\00\1a\00\00\00"))
